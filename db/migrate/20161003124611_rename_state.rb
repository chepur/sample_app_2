class RenameState < ActiveRecord::Migration
  def change
    rename_column :sim_types, :state, :active
  end
end
