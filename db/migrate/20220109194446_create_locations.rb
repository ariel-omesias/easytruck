class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :region
      t.string :commune

      t.timestamps
    end
  end
end
