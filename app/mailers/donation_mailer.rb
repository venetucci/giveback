class DonationMailer < ApplicationMailer

  def new_donation_email(donation)
    @donation = donation
    @organization = @donation.organization
    recipients = Rails.application.secrets.donation_email_recipients.split(',')
    mail(to: recipients, subject: 'New donation submitted')
  end

end
