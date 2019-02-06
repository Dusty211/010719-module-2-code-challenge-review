class Customer < ApplicationRecord
  has_many :orders
  has_many :items, through: :orders
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  def full_name
    first_name + ' ' + last_name
  end

end
