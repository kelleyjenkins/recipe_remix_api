class List < ApplicationRecord
  has_many :ingredients, through: :list_ingredients
end
