class RemoveTariffFromSimtypes < ActiveRecord::Migration
  def change
    remove_column :sim_types, :tariff
  end
end
