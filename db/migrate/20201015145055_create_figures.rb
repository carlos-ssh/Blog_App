class CreateFigures < ActiveRecord::Migration[6.0]
  def change
    create_table :figures do |t|
      t.string :title
      t.string :text
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
