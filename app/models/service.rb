class Service < ApplicationRecord
  has_many :medical_records_services, dependent: :destroy
  has_many :medical_records, through: :medical_records_services, dependent: :destroy

  def service_ids_of_medical_record medical_record_id
    return if medical_records_services.find_by medical_record_id: medical_record_id
  end
end
