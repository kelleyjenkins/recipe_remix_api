class List < ApplicationRecord
  has_many :list_ingredients
  has_many :ingredients, {through: :list_ingredients}, dependent: :destroy
end
