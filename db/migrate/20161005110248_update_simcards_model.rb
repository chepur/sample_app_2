class UpdateSimcardsModel < ActiveRecord::Migration
  def change
    remove_column :simcards, :title, :string
    add_column :simcards, :sim_type, :string
    add_column :simcards, :tariff, :string
  end
end
