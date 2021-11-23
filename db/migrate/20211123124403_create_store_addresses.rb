class CreateStoreAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :store_addresses do |t|
      t.string :street
      t.string :suburb
      t.references :state, null: false, foreign_key: true
      t.integer :post_code
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
