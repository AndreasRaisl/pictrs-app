require 'rails_helper'

RSpec.describe Photo, type: :model do
  #let(:photo) { Photo.new(title: "Test Photo") }
  subject(:photo) { build(:photo) }

  it "is valid with valid attributes" do
  end

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it "has a factory with correct title initialization" do
    expect(subject.title).to eq "Test Photo"
  end

  it "is invalid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  describe "#color_variant" do
    it "resizes the image" do
      resized_image = photo.color_variant
      expect(resized_image).to eq resized_image
      expect(photo.title).to eq "Test Photo"
    end
  end

  describe "#grayscale_variant" do
    it "resizes the image" do
      resized_image = photo.grayscale_variant
      expect(resized_image).to eq resized_image
    end
  end

  # describe "#grayscale_variant_1" do
  #   it "resizes the image" do
  #     resized_image = photo.grayscale_variant_1
  #     expect(resized_image).to eq resized_image
  #   end
  # end

  # describe "#grayscale_variant_2" do
  #   it "resizes the image" do
  #     resized_image = photo.grayscale_variant_2
  #     expect(resized_image).to eq resized_image
  #   end
  # end

  describe "#image_thumbnail" do
    it "resizes the image" do
      resized_image = photo.image_thumbnail
      expect(resized_image).to eq resized_image
    end
  end









  #   it { is_expected.to have_readonly_attribute(:tenant_id) }
  #   it { is_expected.to belong_to(:tenant).required }
  #   it { is_expected.to have_secure_password }

  #   it 'has a valid factory' do
  #     expect(api_user).to be_valid
  #   end

  #   describe 'validations' do
  #     it { is_expected.to validate_presence_of(:username) }
  #     it { is_expected.to validate_uniqueness_of(:username).scoped_to(:tenant_id).case_insensitive }

  #     it { is_expected.to validate_presence_of(:password) }
  #     it { is_expected.to validate_length_of(:password).is_at_least(15) }
  #   end
  # end
end
