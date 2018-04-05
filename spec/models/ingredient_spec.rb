require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe "associations" do
    it { is_expected.to have_many(:list_ingredients)}
    it { is_expected.to have_many(:lists)}
  end
end
