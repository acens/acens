class PortfoliosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new portfolio_params
    if @portfolio.save
      # @portfolio.pictures.create params[:pictures]
      if params[:images]
        #===== The magic is here ;)
        params[:images].each { |image|
          image_obj = @portfolio.pictures.build
          image_obj.image = image
          image_obj.save
          # @portfolio.pictures.create(image: image)
        }
      end
      redirect_to root_path, notice: "Portfolio adicionado!"
    else
      render action: :new
    end

  end

  def edit
    @portfolio = Portfolio.find params[:id]
  end

  def update
    @portfolio = Portfolio.find params[:id]
    if @portfolio.update portfolio_params

      redirect_to root_path, notice: "#{@portfolio.title} foi atualizado!"
    else
      render action: :edit
    end
  end

  def destroy
    @portfolio = Portfolio.find params[:id]
    if @portfolio.destroy
      redirect_to root_url, notice: "Item removido!"
    end
  end


  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle,
    :description, :client_name, :banner, :image, :type_service, :type_service_id)
  end
end
