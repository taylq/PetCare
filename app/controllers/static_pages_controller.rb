class StaticPagesController < ApplicationController
  def home
    @feed_items = Blog.all.page(params[:page]).per(Settings.per_page)
    if user_signed_in?
      @blog  = current_user.blogs.build
      @comment = current_user.comments.build
      @feed_items = current_user.feed.page(params[:page]).per(Settings.per_page)
      session[:conversations] ||= []

      @users = User.all.where.not(id: current_user)
      @conversations = Conversation.includes(:recipient, :messages)
        .find(session[:conversations])
    end
  end

  def help; end

  def about; end

  def contact; end
end
