class ChangeHouseAttributesToIntegers < ActiveRecord::Migration
  def change
  	change_table :houses do |t|
  		t.change :year_built, :integer
  		t.change :square_feet, :integer
  		t.change :bedrooms, :integer
  		t.change :bathrooms, :integer
  	end
  end
end
