class Order < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 4, maximum: 30}
  validates :surname, presence: true, length: {minimum: 4, maximum: 30}
  validates :tz, presence: true, length: {is: 9}
  validates :phone, presence: true, :numericality => true,
            length: {minimum: 10, maximum: 15}
end
