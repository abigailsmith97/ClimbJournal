class RemoveCoordinatesfromOutdoorClimbings < ActiveRecord::Migration[7.1]
  def change
    remove_column :outdoor_climbings, :latitude
    remove_column :outdoor_climbings, :longitude
  end
end
