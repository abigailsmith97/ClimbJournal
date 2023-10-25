class AddUserIsToLoggedClimbs < ActiveRecord::Migration[7.1]
  def change
    add_column :outdoor_climbings, :user, :string
  end
end
