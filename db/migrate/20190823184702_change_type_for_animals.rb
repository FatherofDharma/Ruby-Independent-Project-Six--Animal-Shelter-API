class ChangeTypeForAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column(:animals, :type)
  end
end
