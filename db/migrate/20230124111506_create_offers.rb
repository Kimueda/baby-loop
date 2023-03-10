class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :item_name
      t.string :category
      t.text :description
      t.integer :rate
      t.integer :rating
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
