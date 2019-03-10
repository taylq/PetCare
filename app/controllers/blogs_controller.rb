class BlogsController < ApplicationController
  before_action :check_info
  before_action :authenticate_user!
  before_action :correct_user, only: :destroy

  def index
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

  def create
    @blog = current_user.blogs.build blog_params
    if @blog.save
      flash[:success] = "blog created!"
      redirect_to blogs_url
    else
      @feed_items = []
      render "static_pages/home"
    end
  end

  def show
    @blog = Blog.find_by id: params[:id]
    @comment = current_user.comments.build
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

  def check_info
    redirect_to edit_user_registration_path(current_user) if user_signed_in? && current_user.dob.blank? && current_user.address.blank? && current_user.phone.blank?
  end
end
