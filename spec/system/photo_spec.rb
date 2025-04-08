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
end




