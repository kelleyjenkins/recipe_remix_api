class Api::V1::Users::RecipesController < ApplicationController

  def index
    render json: User.find(params[:id]).recipes
  end

end
