class Simcard < ActiveRecord::Base
  belongs_to :order
  validates :title, presence: true, length: {minimum: 3, maximum: 25}
end
