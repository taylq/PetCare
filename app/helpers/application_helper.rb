module ApplicationHelper
  def full_title title = ""
    base_title = t "layouts.header.home"
    return base_title if title.empty?
    base_title + " | " + title
  end

  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def type_choice
    Desease.type_pets.keys.map{|type| [t("#{type}"), type]}
  end
end
