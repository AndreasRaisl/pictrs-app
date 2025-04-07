class Photo < ApplicationRecord
  has_one_attached :image

  def image_thumbnail
    return unless image.content_type.in?(%w[image/jpeg image/png])
    image.variant(resize_to_limit: [300, 300]).processed
  end


  def color_variant
    image.variant(resize_to_limit: [500, 500])
  end

  def grayscale_variant
    image.variant(resize_to_limit: [500, 500], combine_options: { colorspace: 'Gray' })
    # image.variant(combine_options: { resize: '500x500>', colorspace: 'Gray' })
    # image.variant(
    #   processor: :mini_magick,
    #   combine_options: { resize: '500x500>', colorspace: 'Gray' }
    # )
  end

  def taste
    'delicious'
  end
end
