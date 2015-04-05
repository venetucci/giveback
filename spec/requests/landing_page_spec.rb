require 'rails_helper'

RSpec.describe 'Landing page', type: :request do
  it 'displays information about this project' do
    visit root_url
    expect(page).to have_content('A project by')
  end
end
