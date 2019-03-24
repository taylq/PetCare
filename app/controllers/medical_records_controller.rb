class MedicalRecordsController < ApplicationController
  def show
    @user = User.find_by id: params[:user_id]
    @pet = @user.pets.find_by id: params[:pet_id]
    @medical_record = @pet.medical_records.find_by id: params[:id]
    @services = @medical_record.medical_records_services
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :body)
  end
end
