class CreateListIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :list_ingredients do |t|
      t.references :list, foreign_key: true
      t.references :ingredient, foreign_key: true
    end
  end
end
