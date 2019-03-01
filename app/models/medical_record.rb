class MedicalRecord < ApplicationRecord
  enum status: %i(inprogress done)
  has_many :medical_records_services, dependent: :destroy
  has_many :service, through: :medical_records_services, dependent: :destroy

  belongs_to :pet

  accepts_nested_attributes_for :medical_records_services, allow_destroy: true,
    reject_if: proc{|attributes| attributes["service_id"] == "0"}
end
