require 'rails_helper'

RSpec.describe Donation, type: :model do
  it 'fails validation with no organization' do
    expect(Donation.new(organization_id: nil)).to have(1).error_on(:organization)
  end
end
