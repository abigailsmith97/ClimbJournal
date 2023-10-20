class CreateOutdoorClimbings < ActiveRecord::Migration[7.1]
  def change
    create_table :outdoor_climbings do |t|
      t.date :date
      t.boolean :sport
      t.boolean :trad
      t.boolean :bouldering
      t.string :location

      t.timestamps
    end
  end
end
