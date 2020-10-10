class AddPictureToImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :picture, :string
  end
end
