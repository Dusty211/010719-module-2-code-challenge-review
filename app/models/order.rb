class Order < ApplicationRecord
  belongs_to :item
  belongs_to :customer
  validates :customer, presence: true
  validates :item, presence: true
  validates :quantity, numericality: {greater_than_or_equal_to: 1}

end
