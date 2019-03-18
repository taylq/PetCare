class SearchesController < ApplicationController
  def index
    @q = Desease.ransack(params[:q])
    @items = @q.result(distinct: true)
    respond_to do |format|
      format.html
      format.json {
        @items = @items
      }
    end
    @users = User.where(role: :doctor).where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
      .find(session[:conversations])
  end
end
