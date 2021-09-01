class Parenthood < ApplicationRecord
  belongs_to :user
  belongs_to :child

  validates :user_id, :child_id, presence: true
end
