class Api::V1::ListIngredientsController < ApplicationController

  def index
    render json: ListIngredient.all
  end


  def create
    list_ing = ListIngredient.new(list_ingredient_params)

    if list_ing.save
      render json: list_ing
    else
      render json: list_ing.errors, status: 400
    end
  end

  private

  def list_ingredient_params
    params.require(:list_ingredient).permit(:list_id, :ingredient_id)
  end
end
