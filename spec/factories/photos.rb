FactoryBot.define do
  factory :photo do
    title { "Test Photo" }
    after(:build) do |photo|
      photo.image.attach(
        io: File.open(Rails.root.join("spec/fixtures/files/test_image.jpg")),
        filename: "test_image.jpg",
        content_type: "image/jpeg"
      )
    end
  end
end
