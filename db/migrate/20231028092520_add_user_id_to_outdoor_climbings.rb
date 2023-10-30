class AddUserIdToOutdoorClimbings < ActiveRecord::Migration[7.1]
  def change
    add_reference :outdoor_climbings, :user,  null: false, foreign_key: true
  end
end
