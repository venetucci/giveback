require 'rails_helper'

RSpec.describe 'Organization details page', type: :request do
  it 'displays information about the organization' do
    organization = create(:organization)
    visit organization_path(organization)
    expect(page).to have_content(organization.name)
  end
end
