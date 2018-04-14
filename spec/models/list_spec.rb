require 'rails_helper'

RSpec.describe List, type: :model do
  describe "associations" do
    it { should have_many(:list_ingredients)}
    it { should have_many(:ingredients)}
    it {should belong_to(:user)}
  end
end
