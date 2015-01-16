class AddMetaTagsToBusinessMethods < ActiveRecord::Migration
  def change
    add_column :business_methods, :met_title, :string
    add_column :business_methods, :met_description, :string
    add_column :business_methods, :met_keywords, :string
  end
end
