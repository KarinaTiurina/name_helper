RSpec.describe NameHelper do
  it "has a version number" do
    expect(NameHelper::VERSION).not_to be nil
  end

  let(:controller_class_name) { "ItemFilesController" }

  describe "#edit_class_name" do
    it "convert controller name to model name" do
      expect(NameHelper.edit_class_name(controller_class_name)).to eq("ItemFile")
    end
  end

  describe "#tableize" do
    it "convert controller name to table name" do
      expect(NameHelper.tableize(controller_class_name)).to eq("item_files")
    end
  end

  describe "#underscore" do
    it "convert controller name to underscore model name" do
      expect(NameHelper.underscore(controller_class_name)).to eq("item_file")
    end
  end
end
