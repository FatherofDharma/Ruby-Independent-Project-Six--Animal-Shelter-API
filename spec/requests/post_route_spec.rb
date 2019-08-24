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

  # it 'returns the animal age' do
  #
  # end
  #
  # it 'returns the animal breed' do
  #
  # end
  #
  # it 'returns the animal content' do
  #
  # end
  #
  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end
