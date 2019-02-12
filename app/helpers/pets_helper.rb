module PetsHelper
  def type_choice
    Pet.type_pets.keys.map{|type| [t("#{type}"), type]}
  end

  def gender_choice
    Pet.genders.keys.map{|gender| [t("#{gender}"), gender]}
  end
end
