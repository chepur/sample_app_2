class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :surname
      t.integer :tz
      t.string :phone

      t.timestamps null: false
    end
  end
end
