class CreateRecipeOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_options do |t|
      t.references :option, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
