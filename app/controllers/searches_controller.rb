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
  end
end
