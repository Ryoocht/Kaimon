class CreateAdminStores < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_stores do |t|
      t.references :admin, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
