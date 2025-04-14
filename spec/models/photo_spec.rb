require 'rails_helper'

RSpec.describe Photo, type: :model, image_processing: true do
  include ActiveJob::TestHelper

  subject(:photo) { create(:photo) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it "has a factory with correct title initialization" do
    expect(subject.title).to eq "Test Photo"
  end

  it "has a factory that attaches an image" do
    expect(subject.image).to be_attached
  end

  it "is invalid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  describe "#resize" do
    it "returns a resized variant with 500x500 limit" do
      resized_image = photo.resize
      expect(resized_image).to be_an_instance_of(ActiveStorage::VariantWithRecord)
      expect(resized_image.variation.transformations).to include(resize_to_limit: [500, 500])
    end
  end

  describe "#grayscale_variant_1" do
    it "resizes the image" do
      resized_image = photo.grayscale_variant_1
      expect(resized_image).to eq resized_image
    end
  end

  describe "#grayscale_variant_2" do
    it "resizes the image" do
      resized_image = photo.grayscale_variant_2
      expect(resized_image).to eq resized_image
    end
  end

  describe "#rotate_right" do
    it "rotates the image 45 degrees to the right" do
      rotated_image = photo.rotate_right
      expect(rotated_image).to eq rotated_image
    end
  end

  describe "#rotate_right_transparent" do
    it "rotates the image 45 degrees to the right" do
      rotated_image = photo.rotate_right_transparent
      expect(rotated_image).to eq rotated_image
    end
  end

  describe "#image_width" do
    it "returns the width of the original version of the attached image" do
      perform_enqueued_jobs do
        photo.image.reload
        width = photo.image_width
        expect(width).to eq 600
      end
    end
  end

  describe "#image_height" do
    it "returns the height of the original version of the attached image" do
      perform_enqueued_jobs do
        photo.image.reload
        width = photo.image_height
        expect(width).to eq 900
      end
    end
  end

  describe "#image_thumbnail" do
    it "resizes the image" do
      resized_image = photo.image_thumbnail
      expect(resized_image).to eq resized_image
    end
  end
end
