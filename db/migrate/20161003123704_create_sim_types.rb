class CreateSimTypes < ActiveRecord::Migration
  def change
    create_table :sim_types do |t|
      t.string :kind
      t.string :tariff
      t.boolean :state, default: true

      t.timestamps null: false
    end
  end
end
