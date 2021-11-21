class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :last_name
      t.string :first_name
      t.integer :phone_number

      t.timestamps
    end
  end
end
