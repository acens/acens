class HomeController < ApplicationController

  def index
    @users = User.all
    @articles = Article.limit(4)
    @portfolios = Portfolio.limit(8)
  end
end
