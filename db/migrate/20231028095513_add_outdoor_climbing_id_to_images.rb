class AddOutdoorClimbingIdToImages < ActiveRecord::Migration[7.1]
  def change
    add_reference :images, :outdoor_climbing, null: false, foreign_key: true
  end
end
