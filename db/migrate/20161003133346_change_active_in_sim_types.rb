class ChangeActiveInSimTypes < ActiveRecord::Migration
  def change
    change_column :sim_types, :active, :boolean, default: false


  end
end
