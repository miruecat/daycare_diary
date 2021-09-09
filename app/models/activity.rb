class Activity < ApplicationRecord
  belongs_to :child
  belongs_to :user
  has_many_attached :pictures
  attr_accessor :sub_categories

  validates :category, :sub_category, :date, :time, :child_id, :user_id, presence: true

  SLEEPCATEGORIES = ["In Bed", "Out of Bed"]

  FOODCATEGORIES = ["Babyfood", "Bread", "Fruit", "Vegetable", "Milk", "Did not eat", "Other"]

  HEALTHCATEGORIES = ["Healthy", "So-So", "Sick"]

  PLAYCATEGORIES = ["Play Inside", "Play Outside"]

end

  # BABY = "Babyfood"
    # BREAD = "Bread"
    # FRUIT = "Fruit"
    # VEG = "Vegetable"
    # MILK = "Milk" 
    # NOEAT = "Did not eat"