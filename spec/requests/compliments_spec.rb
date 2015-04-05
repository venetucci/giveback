require 'rails_helper'

RSpec.describe 'Compliments API', type: :request do
  it 'returns a compliment via JSON' do
    compliment = Compliment.create(message: "You rock!")
    get compliment_path(compliment)
    json_response = JSON.parse(response.body)
    expect(json_response).to eq({
      compliment: {
        id: compliment.id,
        message: compliment.message,
        message_share_url: compliment.message_share_url
      }
    }.as_json)
  end

  it 'returns a random compliment if the id is random' do
    compliment = Compliment.create(message: "You rock!")
    get compliment_path('random')
    json_response = JSON.parse(response.body)
    expect(json_response).to eq({
      compliment: {
        id: compliment.id,
        message: compliment.message,
        message_share_url: compliment.message_share_url
      }
    }.as_json)
  end
end
