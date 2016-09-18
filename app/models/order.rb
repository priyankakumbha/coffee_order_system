class Order < ApplicationRecord
  belongs_to :user
  # has_one :menu
  # has_many :menus
  has_and_belongs_to_many :menus
end
