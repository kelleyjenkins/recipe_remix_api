class Api::V1::IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all

    render json: ingredients
  end

  def create
    ingredient = Ingredient.new(name)

    if ingredient.save
      render json: ingredient
    else
      render json: ingredient.errors, status: 400
    end 
  end

end
