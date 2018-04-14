class Api::V1::ListsController < ApplicationController

  def index
    lists = List.all

    render json: lists
  end

  def create
    list = List.new(list_params)

    if list.save
      render json: list
    else
      render json: list.errors, status: 400
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :date, :user_id)
  end

end
