class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :type
      t.string :year_built
      t.string :square_feet
      t.string :bedrooms
      t.string :bathrooms

      t.timestamps null: false
    end
  end
end
