class Photo < ApplicationRecord
  has_one_attached :image

  def color_variant
    image.variant(resize_to_limit: [500, 500])
  end

  def grayscale_variant
    image.variant(resize_to_limit: [500, 500], combine_options: { colorspace: 'Gray' })
  end
end
