class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.integer :open_time
      t.integer :close_time

      t.timestamps
    end
  end
end
