class Api::V1::Users::ListsController < ApplicationController

  def index
    render json: User.find(params[:id]).lists
  end

end
