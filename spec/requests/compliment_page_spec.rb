require 'rails_helper'

RSpec.describe 'Compliment me page', type: :request do
  it 'returns a random compliment' do
    compliment = create(:compliment)
    visit(complimentme_path)
    expect(page).to have_content(compliment.message)
  end
end
