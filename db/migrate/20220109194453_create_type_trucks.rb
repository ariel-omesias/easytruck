class CreateTypeTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :type_trucks do |t|

      t.timestamps
    end
  end
end
