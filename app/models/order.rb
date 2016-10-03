class Order < ActiveRecord::Base
  has_many :simcards, dependent: :destroy
  accepts_nested_attributes_for :simcards, allow_destroy: true
  validates :name, length: {minimum: 4, maximum: 30}
  validates :surname, length: {minimum: 4, maximum: 30}
  validates :tz, length: {is: 9}
  validates :phone, length: {minimum: 5, maximum: 12}
end
