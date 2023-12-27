class CreateTimers < ActiveRecord::Migration[7.1]
  def change
    create_table :timers do |t|
      t.date "date"
      t.float  "effort_time"
      t.float "rest_time"
      # t.datetime "created_at", null: false
      # t.datetime "updated_at", null: false
      t.string "climbing_type"
      t.bigint "user_id"
      
      t.timestamps
    end
  end
end
