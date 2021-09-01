class Activity < ApplicationRecord
  belongs_to :child
  belongs_to :user

  validates :category, :sub_category, :date, :time, :child_id, :user_id, presence: true
end
