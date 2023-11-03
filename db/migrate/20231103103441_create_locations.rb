class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
    add_index :locations, :latitude
    add_index :locations, :longitude
  end
end
