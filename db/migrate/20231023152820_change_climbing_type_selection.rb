class ChangeClimbingTypeSelection < ActiveRecord::Migration[7.1]
  def change
    
      remove_column :outdoor_climbings, :sport
      remove_column :outdoor_climbings, :trad
      remove_column :outdoor_climbings, :bouldering
      add_column :outdoor_climbings, :climbing_type, :string
    


  end
end
