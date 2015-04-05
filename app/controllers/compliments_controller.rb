class ComplimentsController < ApplicationController

  def index
    @compliment = Compliment.random
  end

  def show
    @compliment = if params[:id] == 'random'
      Compliment.random
    else
      Compliment.find(params[:id])
    end
    render json: @compliment
  end

end
