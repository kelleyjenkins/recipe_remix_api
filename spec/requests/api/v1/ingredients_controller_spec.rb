require "rails_helper"

describe "Ingredients API" do
  before :each do
    Ingredient.destroy_all
    @apples = Ingredient.create!(name: "apples")
    @sugar = Ingredient.create!(name: "sugar")
  end

  describe "#index" do
    it "returns all ingredients" do
      get "/api/v1/ingredients"

      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json.length).to eq(2)
    end
  end
end
