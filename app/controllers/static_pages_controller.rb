class StaticPagesController < ApplicationController
  before_action :check_info

  def home
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

  def help; end

  def about; end

  def contact; end

  private

  def check_info
    redirect_to edit_user_registration_path(current_user) if user_signed_in? && current_user.dob.blank? && current_user.address.blank? && current_user.phone.blank?
  end
end
