# Preview all emails at http://localhost:3000/rails/mailers/donation_mailer
class DonationMailerPreview < ActionMailer::Preview

  def new_donation_email
    DonationMailer.new_donation_email(Donation.first)
  end

end
