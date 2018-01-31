RSpec.describe NameHelper do
  it "has a version number" do
    expect(NameHelper::VERSION).not_to be nil
  end

  it "convert controller name to table name" do
    controller_class_name = 'ItemFilesController'
    expect(NameHelper.tableize(controller_class_name)).to eq("item_files")
  end
end
