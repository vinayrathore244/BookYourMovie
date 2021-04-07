class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_mobile
      t.string :customer_email
      t.text :customer_address

      t.timestamps
    end
  end
end
