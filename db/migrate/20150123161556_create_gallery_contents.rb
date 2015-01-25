class CreateGalleryContents < ActiveRecord::Migration
  def change
    create_table :gallery_contents do |t|
      t.string :name

      t.timestamps
    end
  end
end
