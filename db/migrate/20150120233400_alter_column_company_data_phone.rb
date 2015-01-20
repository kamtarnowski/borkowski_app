class AlterColumnCompanyDataPhone < ActiveRecord::Migration
  def self.up
    change_table :company_data do |t|
      t.change :phone, :string
    end
  end
  def self.down
    change_table :company_data do |t|
      t.change :phone, :integer
    end
  end
end
