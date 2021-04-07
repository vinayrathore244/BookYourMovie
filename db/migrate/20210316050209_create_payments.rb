class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :amount
      t.string :customer
      t.string :date
      t.string :Time

      t.timestamps
    end
  end
end
