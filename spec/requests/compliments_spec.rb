require 'rails_helper'

describe 'Compliments API' do
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
end
