class Ingredient < ApplicationRecord

  has_many :list_ingredients
  has_many :lists, {through: :list_ingredients}, dependent: :destroy

end
