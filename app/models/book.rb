class Book < ApplicationRecord
  has_many :authorships
  has_many :authors, through: :authorships

  validates :name, presence: true
end
