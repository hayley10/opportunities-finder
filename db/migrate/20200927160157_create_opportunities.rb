class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.string :address
      t.float :size
      t.integer :rooms
      t.integer :floor
      t.integer :listing_price
      t.integer :estimated_price
      t.string :description
      t.references :city, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true

      t.timestamps
    end
  end
end
