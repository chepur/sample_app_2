class Order < ActiveRecord::Base
  has_many :simcards, dependent: :destroy

  accepts_nested_attributes_for :simcards, allow_destroy: true

  validates :name, presence: true, length: {minimum: 4, maximum: 30}
  validates :surname, presence: true, length: {minimum: 4, maximum: 30}
  validates :tz, presence: true, length: {is: 9}
  validates :phone, presence: true, length: {minimum: 5, maximum: 12}, numericality: {only_integer: true}
end
