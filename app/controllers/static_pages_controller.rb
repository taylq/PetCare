class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      @blog  = current_user.blogs.build
      @feed_items = current_user.feed.page(params[:page]).per(10)
    end
  end

  def help; end

  def about; end

  def contact; end
end
