require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/v1/animals', params: { :name => "Dharma", :animal_type => "Cat", :age => "7", :breed => "Calico", :content => "I lick myself" }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Dharma')
  end

  it 'returns the animal_type' do
    expect(JSON.parse(response.body)['animal_type']).to eq('Cat')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(7)
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Calico')
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['content']).to eq('I lick myself')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end

describe "post an animal route with missing content", :type => :request do
  before do
    Animal.destroy_all
  end

it 'returns correct error for empty field' do
  post '/v1/animals', params: { :name => "", :animal_type => "Cat", :age => "7", :breed => "Calico", :content => "I lick myself" }
  expect(response).to have_http_status(:unprocessable_entity)
end

it 'returns correct error for empty field' do
  post '/v1/animals', params: { :name => "", :animal_type => "", :age => "", :breed => "", :content => "" }
  expect(JSON.parse(response.body)['message']).to eq("Validation failed: Name can't be blank, Animal type can't be blank, Age can't be blank, Age is not included in the list, Breed can't be blank, Content can't be blank")
end


end
