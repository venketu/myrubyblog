class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :all_categories
  helper_method :all_posts
  before_filter :site_search
  def all_categories
  	@categories = Category.all
  end



  def all_posts
  	@posts = Post.all
  end

  def site_search
  	@search = Post.search(params[:q])
	@search_posts = @search.result
  end
end
