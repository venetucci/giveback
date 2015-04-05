class ComplimentsController < ApplicationController

  def index
    @compliment = Compliment.order("random()").limit(1).first
  end

  def show
    @compliment = Compliment.find(params[:id])
    render json: @compliment
  end

end
