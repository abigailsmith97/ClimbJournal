class RenameBodyToContent < ActiveRecord::Migration[7.1]
  def change
    rename_column :outdoor_climbings, :user, :user_id
  end
end
