class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
    add_index :opinions, [:user_id, :created_at]
  end
end
