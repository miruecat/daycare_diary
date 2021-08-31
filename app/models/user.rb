class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :activities
  has_many :parenthoods
  belongs_to :daycare
  scope :employees, -> (daycare_id) { where(daycare_id: daycare_id, role: "employee") }
end
