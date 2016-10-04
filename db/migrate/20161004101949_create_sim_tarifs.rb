class CreateSimTarifs < ActiveRecord::Migration
  def change
    create_table :sim_tarifs do |t|

      t.timestamps null: false
    end
  end
end
