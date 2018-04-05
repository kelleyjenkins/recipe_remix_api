require 'rails_helper'

RSpec.describe ListIngredient, types: :model do
  describe "associations" do
    it {should belong_to(:list)}
    it {should belong_to(:ingredient)}
  end
end
