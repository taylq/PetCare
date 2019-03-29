class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.get(current_user.id, params[:user_id])

    add_to_conversations unless conversated?
    # binding.pry
    unless @conversation.messages.blank?
      @messages = @conversation.messages
    @messages.where("user_id != ?", current_user.id).where(read: false).update_all(read: true)
    end

    respond_to do |format|
      format.js
    end
  end

  def close
    @conversation = Conversation.find_by_id(params[:id])

    session[:conversations].delete(@conversation.id)

    respond_to do |format|
      format.js
    end
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    # binding.pry
    unless session[:conversations].nil?
      session[:conversations].include?(@conversation.id)
    else
      return false
    end
  end
end
