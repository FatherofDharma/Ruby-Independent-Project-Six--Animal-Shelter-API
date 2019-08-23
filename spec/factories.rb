require 'rails_helper'

FactoryBot.define do
  factory :animal do
    name { 'Spike' }
    animal_type { 'Dog' }
    age { 5 }
    breed { 'Labrador' }
    content { 'Best food ever!' }
  end
end
