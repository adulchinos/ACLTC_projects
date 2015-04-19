class CreateDeities < ActiveRecord::Migration
  def change
    create_table :deities do |t|
      t.string :name
      t.string :animals
      t.string :places
      t.string :aegis

      t.timestamps null: true
    end
  end
end
