class Menu < ApplicationRecord
  # belongs_to :order
  # has_many :orders
  has_and_belongs_to_many :orders
end
