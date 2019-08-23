class AddAnimalTypeColumnForAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column(:animals, :animal_type, :string)
  end
end
