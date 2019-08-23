require 'rails_helper'

describe "get all animals route", :type => :request do
  Animal.destroy_all

  let!(:animals) { FactoryBot.create_list(:animal, 25)}

  before { get '/v1/animals' }

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(25)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get animal by id route", :type => :request do
  Animal.destroy_all

  it 'returns an error message for invalid id' do
    get '/v1/animals/0'
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Animal with 'id'=0")
  end

  it 'returns an animal by id route' do
    animal = FactoryBot.create(:animal)
    get "/v1/animals/#{animal.id}"
    expect(JSON.parse(response.body)["id"]).to eq(animal.id)
  end

  it 'returns a an animal by name' do
    animal = FactoryBot.create(:animal)
    animal2 = FactoryBot.create(:animal, :name => 'Buddy')
    get "/v1/animals", params: { :name => "Buddy"}
    expect(JSON.parse(response.body)[0]["name"]).to eq(animal2.name)
  end

end
