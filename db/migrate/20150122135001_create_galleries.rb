class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :met_title
      t.string :met_description
      t.string :met_keywords
      t.text :content_top
      t.text :content_bottom

      t.timestamps
    end
  end
end
