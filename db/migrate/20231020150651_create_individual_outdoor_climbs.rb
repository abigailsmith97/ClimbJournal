class CreateIndividualOutdoorClimbs < ActiveRecord::Migration[7.1]
  def change
    create_table :individual_outdoor_climbs do |t|
      t.string :climb_name
      t.string :grade
      t.string :climbing_style
      t.boolean :tick
      t.text :notes
      t.string :climbing_partner

      t.references :outdoor_climbing

      t.timestamps
    end
  end
end
