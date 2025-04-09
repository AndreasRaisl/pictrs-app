class Photo < ApplicationRecord
  has_one_attached :image, dependent: :destroy

  validates_presence_of :title

  def image_thumbnail
    return unless image.content_type.in?(%w[image/jpeg image/png])
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def resize
    return unless image.attached?
    image.variant(resize_to_limit: [500, 500])
  end

  # def grayscale_variant
  #   return unless image.attached?
  #   image.variant(resize_to_limit: [500, 500], colorspace: 'Gray') #, combine_options: { colorspace: 'Gray' })
  #   # image.variant(combine_options: { resize: '500x500>', colorspace: 'Gray' })
  #   # image.variant(
  #   #   processor: :mini_magick,
  #   #   combine_options: { resize: '500x500>', colorspace: 'Gray' }
  #   # )
  end

  def grayscale_variant_1
    return unless image.attached?
    # image.variant(combine_options: { colorspace: "Gray", resize: "200x200" }).processed
    image.variant(resize: "200x200", colorspace: "Gray")
  end

  def grayscale_variant_2
    return unless image.attached?
    #image.variant(combine_options: { colorspace: "Gray", resize: "300x300^", gravity: "center", extent: "300x300" }).processed
    image.variant(resize: "300x300^", gravity: "center", extent: "300x300", colorspace: "Gray")
  end

  def rotate_right
    return unless image.attached?
    image.variant(resize_to_limit: [500, 500], rotate: [45, { background: '#0F0' }])
  end

  def rotate_right_transparent
    return unless image.attached?
    image.variant(format: :png, resize_to_limit: [500, 500], rotate: [45, { background: 'aqua' }])
  end

  def image_width
    image.blob.metadata[:width]
  end

  def image_height
    image.blob.metadata[:height]
  end

end
