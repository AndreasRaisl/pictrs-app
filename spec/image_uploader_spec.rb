require 'rails_helper'

describe ImageUploader do
  describe "#upload" do
    it "uploads an image" do
      uploader = ImageUploader.new
      expect(uploader.upload_image).to eql true
    end
  end
end