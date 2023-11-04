class AddCoordinatesToOutdoorClimbings < ActiveRecord::Migration[7.1]
  def change
    add_column :outdoor_climbings, :latitude, :float
    add_column :outdoor_climbings, :longitude, :float
  end
end
