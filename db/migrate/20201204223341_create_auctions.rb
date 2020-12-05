class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
