require 'rails_helper'

RSpec.describe Photo, type: :model do
  let(:photo) { Photo.new }
  it "is delicious" do
    taste = photo.taste
    expect(taste).to eq('delicious')
  end

  describe "#color_variant" do
    it "resizes the image" do
      resized_image = photo.color_variant
      expect(resized_image).to eq resized_image
    end
  end

  describe "#grayscale_variant" do
    it "resizes the image" do
      resized_image = photo.grayscale_variant
      expect(resized_image).to eq resized_image
    end
  end
end
