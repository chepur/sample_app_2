class RenameStateInTarifs < ActiveRecord::Migration
  def change
    rename_column :sim_tarifs, :state, :active
  end
end
