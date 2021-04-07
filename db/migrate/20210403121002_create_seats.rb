class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :seat_no
      t.boolean :seat_available
      t.date :date

      t.timestamps
    end
  end
end
