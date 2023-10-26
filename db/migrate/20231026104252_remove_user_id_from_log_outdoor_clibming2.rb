class RemoveUserIdFromLogOutdoorClibming2 < ActiveRecord::Migration[7.1]
  def change
    remove_column :outdoor_climbings, :user_id
    remove_column :individual_outdoor_climbs, :user_id 
  end
end
