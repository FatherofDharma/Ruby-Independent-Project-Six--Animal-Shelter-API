# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

class Seed

  def self.begin
    Animal.destroy_all
    seed = Seed.new
    seed.make_animals_cats
    seed.make_animals_dogs
  end

  def make_animals_cats
    animal_type = "Cat"
    25.times do |i|
      cat = Animal.create!(
        name: Faker::Creature::Cat.name,
        animal_type: animal_type,
        age: rand(1..20),
        breed: Faker::Creature::Cat.breed,
        content: Faker::Quote.yoda
      )
      puts "Cat #{i} name is #{cat.name}, type is #{cat.animal_type}, age is #{cat.age}, breed is #{cat.breed}, and the content is #{cat.content}"
    end
  end

  def make_animals_dogs
    animal_type = "Dog"
    25.times do |i|
      dog = Animal.create!(
        name: Faker::Creature::Dog.name,
        animal_type: animal_type,
        age: rand(1..20),
        breed: Faker::Creature::Dog.breed,
        content: Faker::Quote.yoda
      )
      puts "Dog #{i} name is #{dog.name}, animal type is #{dog.animal_type}, age is #{dog.age}, breed is #{dog.breed}, and the content is #{dog.content}"
    end
  end
end

Seed.begin
