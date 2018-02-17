class Owner < ApplicationRecord
  has_many :vehicles

  accepts_nested_attributes_for :vehicles

  validates :name, presence: true
  validates :age, presence: true
  validates :experience, presence: true
end
