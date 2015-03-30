require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'fails validation when no name' do
    expect(Organization.new(name: nil)).to have(1).error_on(:name)
  end

  it 'fails validation when no slug' do
    expect(Organization.new(slug: nil)).to have(1).error_on(:slug)
  end

  it 'fails validation when no info_url' do
    expect(Organization.new(info_url: nil)).to have(1).error_on(:info_url)
  end

  it 'fails validation when no donation_url' do
    expect(Organization.new(donation_url: nil)).to have(1).error_on(:donation_url)
  end

  it 'uses slug as param' do
    expect(Organization.new(slug: 'url').to_param).to eq('url')
  end
end
