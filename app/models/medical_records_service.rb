class MedicalRecordsService < ApplicationRecord
  belongs_to :service
  belongs_to :medical_record
end
