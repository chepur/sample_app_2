class SimType < ActiveRecord::Base
  validates :kind, length: {minimum: 3, maximum: 15}
  validates :tariff, length: {minimum: 3, maximum: 15}
end
