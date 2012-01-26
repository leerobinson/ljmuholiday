class RemoveUseridFromHolidays < ActiveRecord::Migration
  def self.up
    remove_column :holidays, :userid
  end

  def self.down
    add_column :holidays, :userid, :string
  end
end
