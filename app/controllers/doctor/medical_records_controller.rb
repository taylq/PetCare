module Doctor
  class MedicalRecordsController < BaseController
    before_action :find_pet, only: %i(new create)
    before_action :find_info, only: %i(show)
    def new
      @medical_record = MedicalRecord.new
      @services = Service.all
      @medical_records_services = @medical_record.medical_records_services.build
    end

    def create
      @medical_record = MedicalRecord.new medical_record_params
      if @medical_record.save
        Bill.create!(medical_record_id: @medical_record.id)
        flash[:success] = "Tạo mới thành công"
        redirect_to doctor_user_pet_path(@user, @pet)
      else
        flash[:error] = "Tạo mới thất bại"
        render :new
      end
    end

    def show

    end

    private

    def find_pet
      @user = User.find_by id: params[:user_id]
      @pet = @user.pets.find_by id: params[:pet_id]
    end

    def find_info
      @user = User.find_by id: params[:user_id]
      @pet = @user.pets.find_by id: params[:pet_id]
      @medical_record = MedicalRecord.find_by id: params[:id]
      @doctor = User.find_by_id @medical_record.doctor_id
    end

    def medical_record_params
      params.require(:medical_record).permit :doctor_id, :pet_id, :result, :description, :status, medical_records_services_attributes: %i(id medical_record_id service_id quantity _destroy)
    end
  end
end
