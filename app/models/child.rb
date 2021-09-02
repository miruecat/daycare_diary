class Child < ApplicationRecord
  belongs_to :daycare
  has_many :parenthoods
  has_many :parents, through: :parenthoods, class_name: "User"
  has_many :activities
  has_one_attached :profile_picture

  validates :first_name, :last_name, :birthdate, :daycare_id, presence: true
  # Add validates that first_name / last_name / birthdate combination must be unique

  def is_parent?(user)
    parents.include?(user)
  end

  def is_employee?(user)
    User.employees(daycare_id).include?(user)
  end

  def activity_pictures
    activities.flat_map{|activity| activity.pictures}
  end
end
