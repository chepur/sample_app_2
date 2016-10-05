class DropSimTatiftsTables < ActiveRecord::Migration
  def change
    drop_table :sim_tarifs
    drop_table :sim_tatifs
  end
end
