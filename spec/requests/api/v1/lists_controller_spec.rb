require 'rails_helper'
# require 'date'

describe "Lists API" do
  before :each do
    Ingredient.destroy_all
    List.destroy_all
    @ingreident = Ingredient.create!(name: "Apples")
    @list = List.create!(name: "Fall Ingredients", date: "2018-03-04")
  end

  describe "#index" do
    it "returns all lists" do
      get "/api/v1/lists"

      json = JSON.parse(response.body)
      expect(response.status).to eq(200)
      expect(json.first["name"]).to eq(@list.name)
    end
  end

end
