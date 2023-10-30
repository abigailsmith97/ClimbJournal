class AddImageToImages < ActiveRecord::Migration[7.1]
  def change
    add_column :images, :image, :string
  end
end
