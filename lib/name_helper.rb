require "name_helper/version"

module NameHelper
  def self.tableize(controller_class_name)
    controller_class_name.to_s.gsub("sController", '').tableize
  end
end
