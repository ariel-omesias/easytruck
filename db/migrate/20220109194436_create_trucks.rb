class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :image
      t.text :description
      t.decimal :tonnage
      t.decimal :rate
      t.integer :stock
      t.string :phone
      t.boolean :available

      t.timestamps
    end
  end
end
