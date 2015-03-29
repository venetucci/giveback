class ComplimentsController < ApplicationController

  def show
    @compliment = Compliment.find(params[:id])
    render json: @compliment
  end

end
