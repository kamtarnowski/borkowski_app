class AlterColumnCompanyDataMobPhone < ActiveRecord::Migration
  def self.up
    change_table :company_data do |t|
      t.change :mob_phone, :string
    end
  end
  def self.down
    change_table :company_data do |t|
      t.change :mob_phone, :integer
    end
  end
end
