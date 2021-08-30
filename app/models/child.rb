class Child < ApplicationRecord
  belongs_to :daycare
  has_many :parenthoods
  has_many :activities
end
