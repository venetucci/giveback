require 'rails_helper'

RSpec.describe 'Organization details page', type: :request do
  it 'displays information about the organization' do
    organization = create(:organization)
    compliment = create(:compliment)
    visit organization_path(organization)
    expect(page).to have_content(organization.name)
    expect(page).to have_content(compliment.message)
  end
end
