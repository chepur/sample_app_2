class Simcard < ActiveRecord::Base
  belongs_to :order
  validates :sim_type, presence: true
  validates :tariff, presence: true
end
