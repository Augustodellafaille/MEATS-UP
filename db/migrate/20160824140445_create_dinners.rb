class CreateDinners < ActiveRecord::Migration[5.0]
  def change
    create_table :dinner do |t|
      t.string :dish_type
      t.string :dish
      t.string :dish_description
      t.timestamps
    end
  end
end
