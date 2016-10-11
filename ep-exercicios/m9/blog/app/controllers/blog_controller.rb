class BlogController < ApplicationController
  before_filter :register_view
  def index
    @articles = Article.all
  end
  
  def article
    @article = Article.find(params[:id])
  end
  
  def category
    @articles = Article.where(category: params[:c]).all
  end
  
  def search
    @articles = Article.search(params[:q])
  end
  
  private
  def register_view
    View.create(remote_ip: request.remote_ip)
  end
end
