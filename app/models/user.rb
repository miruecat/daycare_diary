class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :activities
  has_many :parenthoods
  has_many :children, through: :parenthoods
  belongs_to :daycare
  scope :employees, -> (daycare_id) { where(daycare_id: daycare_id, role: "employee") }
  scope :parents, -> { where.not(role: "employee") }

  has_one_attached :user_picture

  validates :email, :password, :role, :daycare_id, :phone_number, :first_name, :last_name, presence: true

  def fullname
    "#{first_name} #{last_name}"
  end
end
