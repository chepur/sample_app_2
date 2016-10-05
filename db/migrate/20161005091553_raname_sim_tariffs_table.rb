class RanameSimTariffsTable < ActiveRecord::Migration
  def change
    rename_table :sim_tarifs, :sim_tariffs
  end
end
