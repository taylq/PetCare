module Secretary
  class MedicalRecordsController < BaseController
    before_action :find_pet, only: %i(show)

    def show
      # @medical_record.bill.create!(medical_record_id: @medical_record, total: )
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "#{@user.name}_#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}",
            template: "secretary/medical_records/show.html.erb",
            disposition: "attachment",
            orientation: "Landscape",
            encoding: "UTF-8"
        end
      end
    end

    private

    def find_pet
      @user = User.find_by id: params[:user_id]
      @pet = @user.pets.find_by id: params[:pet_id]
      @medical_record = MedicalRecord.find_by id: params[:id]
      @doctor = User.find_by_id @medical_record.doctor_id
    end
  end
end
