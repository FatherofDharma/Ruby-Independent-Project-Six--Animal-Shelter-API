require 'rails_helper'

describe "get all animals route", :type => :request do
  Animal.destroy_all

  let!(:animals) { FactoryBot.create_list(:animal, 25)}

  before { get '/v1/animals' }

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(25)
  end

end
