class Activity < ApplicationRecord
  belongs_to :child
  belongs_to :user
  has_many_attached :pictures

  validates :category, :sub_category, :date, :time, :child_id, :user_id, presence: true
end
