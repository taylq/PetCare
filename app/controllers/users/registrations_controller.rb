# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :find_user, only: %i(show)

  def new
    @user = User.new
  end

  def show; end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def find_user
    return if @user = User.find_by(id: params[:id])
    flash[:danger] = t "users.find_fail"
    redirect_to users_path
  end
end
