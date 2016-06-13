class CreateSimCards < ActiveRecord::Migration
  def change
    create_table :sim_cards do |t|
      t.references :order, index: true, foreign_key: true
      t.string :title

      t.timestamps null: false
    end
  end
end
