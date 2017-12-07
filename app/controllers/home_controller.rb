class HomeController < ApplicationController

  def index
    @users = User.all.where(active: true).order(priority: :asc)
    @articles = Article.limit(4)
    @portfolios = Portfolio.limit(8)
    @contact = Contact.new
  end
end
