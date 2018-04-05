class Ingredient < ApplicationRecord
  has_many :lists, through: :list_ingredients
end
