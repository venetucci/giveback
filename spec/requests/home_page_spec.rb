require 'rails_helper'

describe 'Home page', type: :request do
  it 'displays information about this project' do
    visit root_url
    expect(page).to have_content('Home Page')
  end
end
