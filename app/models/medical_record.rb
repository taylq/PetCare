class MedicalRecord < ApplicationRecord
  enum status: %i(inprogress done)
  has_many :medical_records_services, dependent: :destroy
  has_many :service, through: :medical_records_services, dependent: :destroy

  has_one :bill

  belongs_to :pet

  accepts_nested_attributes_for :medical_records_services, allow_destroy: true,
    reject_if: proc{|attributes| attributes["service_id"] == "0"}

  def sub_total
    sum = 0
    medical_records_services.each do |line_item|
      sum += line_item.service.price * line_item.quantity
    end
    sum
  end
end
