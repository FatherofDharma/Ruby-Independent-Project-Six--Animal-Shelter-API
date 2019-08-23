class Animal < ApplicationRecord

  validates :name, presence: true
  validates :animal_type, presence: true
  validates :age, presence: true
  validates_inclusion_of :age, in: 1..30
  validates :breed, presence: true
  validates :content, presence: true

  scope :find_by_name, -> (name) { where("name ILIKE ?", "%#{name}%")}
# find ranom animal scope solution came from some searching on stack overflow
# but rails console warns about this syntax being an issue in Rails 6 - Deprecation warning.
  scope :find_random_animal, -> { select("*").order("RANDOM()").limit(1)}

end
