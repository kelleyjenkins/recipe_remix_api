class Api::V1::IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all

    render json: ingredients
  end

  def create
    ingredient = Ingredient.find_by(name: ingredient_params[:name])

    return render(json: ingredient) if ingredient

    new_ingred = Ingredient.new(ingredient_params)

    if new_ingred.save
      render json: new_ingred
    else
      render json: new_ingred.errors, status: 400
    end
  end

private

def ingredient_params
  params.require(:ingredient).permit(:name)
end

end
