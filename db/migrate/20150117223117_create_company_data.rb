class CreateCompanyData < ActiveRecord::Migration
  def change
    create_table :company_data do |t|
      t.string :title
      t.text :content
      t.string :name
      t.string :address
      t.string :email
      t.integer :phone
      t.integer :mob_phone
      t.string :met_title
      t.string :met_description
      t.string :met_keywords

      t.timestamps
    end
    add_index :company_data, [:title, :content, :created_at]
  end
end
