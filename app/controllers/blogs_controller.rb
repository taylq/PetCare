class BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: :destroy

  def index
    @feed_items = Blog.all.page(params[:page]).per(Settings.per_page)
    if user_signed_in?
      @blog  = current_user.blogs.build
      @comment = current_user.comments.build
      @feed_items = current_user.feed.page(params[:page]).per(Settings.per_page)
      session[:conversations] ||= []

      @users = User.all.where(role: 5)
      @conversations = Conversation.includes(:recipient, :messages)
        .find(session[:conversations])
    end
  end

  def create
    @blog = current_user.blogs.build blog_params
    if @blog.save
      flash[:success] = "blog created!"
      redirect_to root_url
    else
      @feed_items = []
      render "static_pages/home"
    end
  end

  def destroy
    @blog.destroy
    flash[:success] = "blog deleted"
    redirect_to request.referrer || root_url
  end

  private

  def blog_params
    params.require(:blog).permit :title, :content, :image, :user_id
  end

  def correct_user
    @blog = current_user.blogs.find_by id: params[:id]
    redirect_to root_url if @blog.nil?
  end
end
