module MedicalRecordsHelper
  def status_choice
    MedicalRecord.statuses.keys.map{|status| [t("#{status}"), status]}
  end
end
