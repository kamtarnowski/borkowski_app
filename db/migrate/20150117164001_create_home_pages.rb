class CreateHomePages < ActiveRecord::Migration
  def change
    create_table :home_pages do |t|
      t.string :title
      t.text :content
      t.string :met_title
      t.string :met_description
      t.string :met_keywords

      t.timestamps
    end
    add_index :home_pages, [:title, :content, :created_at]
  end
end
