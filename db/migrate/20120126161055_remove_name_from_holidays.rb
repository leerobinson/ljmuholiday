class RemoveNameFromHolidays < ActiveRecord::Migration
  def self.up
    remove_column :holidays, :name
  end

  def self.down
    add_column :holidays, :name, :string
  end
end
