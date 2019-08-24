require 'rails_helper'

describe "put animals by id route" do

  it 'will update an animal' do
    animal = FactoryBot.create(:animal)
    put "/v1/animals/#{animal.id}", params: { :name => 'Bascha', :animal_type => 'Cat', :age => 4, :breed => 'Calico', :content => "I like to eat tuna."}
    expect(JSON.parse(response.body)['message']).to eq("The animal entry for Bascha has been updated successfully.")
    expect(response).to have_http_status(:success)
    updated_animal = Animal.find(animal.id)
    expect(updated_animal.name).to eq("Bascha")
    expect(updated_animal.animal_type).to eq("Cat")
    expect(updated_animal.age).to eq(4)
    expect(updated_animal.breed).to eq("Calico")
    expect(updated_animal.content).to eq("I like to eat tuna.")
  end

end
