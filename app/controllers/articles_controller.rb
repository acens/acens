class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    @article.user = current_user
    if @article.save
      redirect_to root_path, notice: "Artigo salvo com sucesso!"
    else
      render :new
    end
  end

  def edit
    @article = Article.friendly.find params[:id]
  end

  def update
    @article = Article.friendly.find params[:id]
    if @article.update article_params
      redirect_to article_path(@article.id), notice: "Artigo atualizado com sucesso!"
    else
      render :edit, alert: "Informações inválidas, verifique!"
    end
  end
  def show
    @article = Article.friendly.find(params[:id])
  end

  def destroy
    @article = Article.friendly.find params[:id]
    @article.destroy
    redirect_to root_url, notice: "Artigo removido!"
  end

  private
  def article_params
    params.require(:article).permit(:title, :subtitle, :user, :description, :photo, :body, :photo_file_name)
  end
end
