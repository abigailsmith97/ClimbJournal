class CreateNameofusers < ActiveRecord::Migration[7.1]
  def change
    create_table :nameofusers do |t|
      t.string :name

      t.timestamps
    end
  end
end
