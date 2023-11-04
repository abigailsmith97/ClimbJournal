class AddCoordinatesToOutdoorClimbings < ActiveRecord::Migration[7.1]
  def change
    
    remove_column :outdoor_climbings, :longitude, :float
    remove_column :outdoor_climbings, :latitude, :float
    
  end
end
