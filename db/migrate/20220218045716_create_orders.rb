class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :address
      t.integer :status

      t.timestamps
    end
  end
end
