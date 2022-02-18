class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :is_admin
      t.string :first_name
      t.string :last_name
      t.text :email
      t.integer :phone
      t.text :address
      t.text :password_digest

      t.timestamps
    end
  end
end
