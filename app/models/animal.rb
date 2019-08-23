class Animal < ApplicationRecord

  validates :name, presence: true
  validates :animal_type, presence: true
  validates :age, presence: true
  validates_inclusion_of :age, in: 1..30
  validates :breed, presence: true
  validates :content, presence: true


end
