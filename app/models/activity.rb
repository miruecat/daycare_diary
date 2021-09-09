class Activity < ApplicationRecord
  belongs_to :child
  belongs_to :user
  has_many_attached :pictures
  attr_accessor :sub_categories

  validates :category, :sub_category, :date, :time, :child_id, :user_id, presence: true

  HEALTHCATEGORIES = ["Healthy", "Soso", "Sick"]

end
