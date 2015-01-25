class AddImageToGalleryContent < ActiveRecord::Migration
  def self.up
    add_attachment :gallery_contents, :image
  end

  def self.down
    remove_attachment :gallery_contents, :image
  end
end
