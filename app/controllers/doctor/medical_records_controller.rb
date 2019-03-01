module Doctor
  class MedicalRecordsController < BaseController
    before_action :find_pet, only: %i(new create)
    def new
      @medical_record = MedicalRecord.new
      @services = Service.all
    end

    def create
      binding.pry
      @medical_record = MedicalRecord.new medical_record_params
      if @medical_record.save
        flash[:success] = "create successfull"
        redirect_to doctor_user_pet_path(@user, @pet)
      else
        flash[:danger] = "create fail"
        render :new
      end
    end

    private

    def find_pet
      @user = User.find_by id: params[:user_id]
      @pet = @user.pets.find_by id: params[:pet_id]
    end

    def medical_record_params
      params.require(:medical_record).permit :doctor_id, :pet_id, :result, :description, :status, medical_records_services_attributes: %i(id medical_record_id service_id _destroy)
    end
  end
end
