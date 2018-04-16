class Api::V1::RecipesController < ApplicationController

  def index
    render json: Recipe.all
  end

  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      render json: recipe
    else
      render json: recipe.errors, status: 400
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :url, :user_id)
  end
end
