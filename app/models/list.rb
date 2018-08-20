class List < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many :list_ingredients, dependent: :destroy
  has_many :ingredients, {through: :list_ingredients}


end
