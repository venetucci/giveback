class DonationsController < ApplicationController

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      DonationMailer.new_donation_email(@donation).deliver_now
      redirect_to @donation.organization.donation_url
    else
      redirect_to :back
    end
  end

private

  def donation_params
    params.require(:donation).permit(:name, :email, :amount, :organization_note, :personal_note, :organization_id)
  end

end
