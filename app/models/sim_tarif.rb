class SimTarif < ActiveRecord::Base
  validates :tar_name, length: {minimum: 3, maximum: 15}
end
