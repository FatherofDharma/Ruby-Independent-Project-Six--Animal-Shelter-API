require 'rails_helper'

describe "delete destination route" do
  before do
    Animal.destroy_all
  end

  it 'will remove an animal' do
    animal = FactoryBot.create(:animal, :name => "Sam")
    delete "/v1/animals/#{animal.id}"
    expect(JSON.parse(response.body)['message']).to eq("The animal entry for Sam has been successfully removed.")
    expect(response).to have_http_status(:success)
    get "/v1/animals/#{animal.id}"
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Animal with 'id'=#{animal.id}")
  end

end
