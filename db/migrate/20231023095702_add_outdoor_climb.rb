class AddOutdoorClimb < ActiveRecord::Migration[7.1]
  def change
    add_reference :individual_outdoor_climbs, :outdoor_climbing, null: false, foreign_key: true
  end
end
