class ChangeIntegerLimitInOrder < ActiveRecord::Migration
  def change
    change_column :orders, :tz, :integer, limit: 8
    change_column :orders, :phone, :integer, limit: 8
  end
end
