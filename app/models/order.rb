class Order < ActiveRecord::Base
  validates :name, length: {minimum: 4, maximum: 30}
  validates :surname, length: {minimum: 4, maximum: 30}
  validates :tz, length: {is: 9, message: "only 9 digits allowed"}
  validates :phone, length: {minimum: 10, maximum: 15}
end
