class RenameFieldInSimTariffs < ActiveRecord::Migration
  def change
    change_column :sim_tariffs, :active, :boolean, default: false
  end
end
