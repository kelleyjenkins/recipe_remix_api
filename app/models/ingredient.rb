class Ingredient < ApplicationRecord
  validates_uniqueness_of :name, :case_sensitive => false
  has_many :list_ingredients
  has_many :lists, {through: :list_ingredients}, dependent: :destroy

end
