class AddTitleFooterToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :title_footer, :string
  end
end
