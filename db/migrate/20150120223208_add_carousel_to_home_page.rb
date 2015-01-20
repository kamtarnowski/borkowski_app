class AddCarouselToHomePage < ActiveRecord::Migration
  def change
    add_column :home_pages, :carousel, :text
  end
end
