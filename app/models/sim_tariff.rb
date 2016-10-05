class SimTariff < ActiveRecord::Base
  validates :tariff, length: {minimum: 3, maximum: 15}
end
