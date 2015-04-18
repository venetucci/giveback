class OrganizationsController < ApplicationController

  def show
    @organization = Organization.find_by_slug!(params[:slug])
    @compliment = Compliment.random
    @donation = @organization.donations.build
  end

end
