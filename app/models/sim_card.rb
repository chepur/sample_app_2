class SimCard < ActiveRecord::Base
  belongs_to :order
  validates :title, length: {minimum: 3, maximum: 25}

end
