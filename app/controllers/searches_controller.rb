class SearchesController < ApplicationController
  def index
    @q = Desease.ransack(symptom_cont: params[:q][:symptom_cont], pet_type_eq: params[:q][:pet_type])
    @items = @q.result(distinct: true)
    respond_to do |format|
      format.html
      format.json { @items = Desease.ransack(symptom_cont: params[:q][:symptom_cont], pet_type_eq: params[:q][:pet_type]).result(distinct: true)}
    end
  end
end
