class CreateBusinessMethods < ActiveRecord::Migration
  def change
    create_table :business_methods do |t|
      t.string :title
      t.text :content
      t.string :met_title
      t.string :met_description
      t.string :met_keywords

      t.timestamps
    end
    add_index :business_methods, [:title, :content, :created_at]
  end
end
