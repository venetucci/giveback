require 'rails_helper'

RSpec.describe 'Organization details page', type: :request do
  it 'displays information about the organization' do
    organization = Organization.create!(
      name: 'RailsBridge',
      slug: 'railsbridge',
      info_url: 'http://www.railsbridge.org',
      donation_url: 'http://www.railsbridge.org/donate')
    visit organization_path(organization)
    expect(page).to have_content(organization.name)
  end
end
