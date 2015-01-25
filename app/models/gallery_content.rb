class GalleryContent < ActiveRecord::Base
  has_attached_file :image, styles: {
      thumb:  '100x100>',
      square: '150x150#',
      medium: '500x500>'
  }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  default_scope -> { order('created_at DESC') }

end
