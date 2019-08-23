require 'rails_helper'

describe Animal do

  it { should validate_presence_of :name }
  it { should validate_presence_of :animal_type}
  it { should validate_presence_of :age}
  it { should validate_presence_of :breed}
  it { should validate_presence_of :content}
  it { should validate_inclusion_of(:age).in_range(1..30)}

end
