class CreateUserAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_addresses do |t|
      t.string :street
      t.string :suburb
      t.references :state, null: false, foreign_key: true
      t.integer :post_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
