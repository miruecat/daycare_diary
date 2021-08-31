class Daycare < ApplicationRecord
  has_many :users
  has_many :children

  validates :name, presence: true
end
