class CreateSimcards < ActiveRecord::Migration
  def change
    create_table :simcards do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
