class Daycare < ApplicationRecord
  has_many :users
  has_many :children
end
