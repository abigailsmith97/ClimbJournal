class AddUserIdToIndividualClimbs < ActiveRecord::Migration[7.1]
  def change
    add_column :individual_outdoor_climbs, :user_id, :string
  end
end
