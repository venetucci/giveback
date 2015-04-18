require 'rails_helper'

RSpec.describe 'Submit donation form', type: :request do
  it 'saves the submitted form information and sends an email' do
    organization = create(:organization, donation_url: family_url)
    create(:compliment)
    visit organization_path(organization)
    fill_in 'donation_name', with: 'My Full Name'
    fill_in 'donation_email', with: 'email@example.com'
    fill_in 'donation_amount', with: '$100'
    fill_in 'donation_organization_note', with: 'Keep up the great work!'
    fill_in 'donation_personal_note', with: 'I donated :)'
    click_button 'Submit form and donate'
    expect(page).to have_content('We have a little announcement')
    expect(ActionMailer::Base.deliveries).to_not be_empty
  end

  it 'returns back to the donation form if something goes wrong' do
    referrer = 'http://example.com/organization-name'
    headers = { 'HTTP_REFERER' => referrer }
    post donations_path, { donation: { name: 'not enough fields'} }, headers
    expect(response).to redirect_to(referrer)
  end
end
