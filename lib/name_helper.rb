require "name_helper/version"

module NameHelper
  def self.tableize(controller_class_name)
    edit_class_name(controller_class_name).tableize
  end

  def self.underscore(controller_class_name)
    edit_class_name(controller_class_name).underscore
  end

  private

  def self.edit_class_name(controller_class_name)
    controller_class_name.to_s.gsub("sController", '')
  end
end
