require "rails_helper"

RSpec.describe "Photos", type: :system do
  describe 'index' do
    context "no photos exist in the database" do
      it "the index page shows a message that no photos exist yet" do
        expect(Photo.count).to eq 0
        visit photos_path
        expect(page).to have_content "Es sind noch keine Fotos hochgeladen"
      end
    end

    context "2 photos exist in the database" do
      let!(:photo_1) { create(:photo, title: "First photo") }
      let!(:photo_2) { create(:photo, title: "Second photo") }

      it "shows thumbnails of all the photos" do
        expect(Photo.count).to eq 2
        visit photos_path

        # click_on("Foto anzeigen")

      end
    end
  end

  describe "upload" do
    it "the upload page shows a message" do
      visit upload_path
      expect(page).to have_content "Fotos hochladen"
    end

    it "allows to upload a new photo successfully" do
      expect(Photo.count).to eq 0
      visit upload_path
      fill_in "Titel", with: "Example Photo Title 1"
      attach_file "photo_image", Rails.root.join("spec/fixtures/files/test_image.jpg")
      click_on "Upload"
      visit photos_path
      expect(page).to have_content("Example Photo Title 1")
      expect(Photo.count).to eq 1
      photo = Photo.last
      expect(page).to have_css("img[src*='#{photo.image.filename}']")
    end
  end
end
