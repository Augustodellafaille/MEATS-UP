class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :address
      t.integer :capacity

      t.timestamps
    end
  end
end
