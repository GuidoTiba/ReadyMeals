class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.references :event, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
