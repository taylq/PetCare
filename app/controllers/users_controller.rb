class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_info
  before_action :find_user, except: %i(index new create)
  before_action :status_relationship, only: %i(show following followers)

  def index
    @users = User.select_attr.page(params[:page]).per(Settings.per_page).search params[:search]
  end

  def new
    @user = User.new
  end

  def show
    @blogs = @user.blogs.page(params[:page]).per(Settings.per_page)
    @comment = current_user.comments.build
    if current_user == @user
      @blog  = current_user.blogs.build
    end
      @feed_items = @user.feed.page(params[:page]).per(Settings.per_page)
  end

  def following
    @title = t "users.following"
    @users = @user.following.page(params[:page]).per(Settings.per_page)
    render "show_follow"
  end

  def followers
    @title = t "users.followers"
    @users = @user.followers.page(params[:page]).per(Settings.per_page)
    render "show_follow"
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def find_user
    return if @user = User.find_by(id: params[:id])
    flash[:danger] = t "users.find_fail"
    redirect_to users_path
  end

  def status_relationship
    return unless user_signed_in?
    @active_relationships = current_user.active_relationships.build
    @inactive_relationships = current_user.active_relationships.find_by(followed_id: @user.id)
  end

  def check_info
    redirect_to edit_user_registration_path(current_user) if user_signed_in? && current_user.dob.blank? && current_user.address.blank? && current_user.phone.blank?
  end
end
