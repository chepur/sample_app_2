class CreateSimTarif < ActiveRecord::Migration
  def change
    create_table :sim_tarifs do |t|
      t.string :tariff
      t.boolean :state, default: true

      t.timestamps null: false
    end
  end
end
