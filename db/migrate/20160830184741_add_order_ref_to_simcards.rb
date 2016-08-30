class AddOrderRefToSimcards < ActiveRecord::Migration
  def change
    add_reference :simcards, :order, index: true, foreign_key: true
  end
end
