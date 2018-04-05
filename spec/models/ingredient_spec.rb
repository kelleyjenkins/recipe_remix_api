require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe "associations" do
    it { should have_many(:list_ingredients)}
    it { should have_many(:lists)}
  end
end
