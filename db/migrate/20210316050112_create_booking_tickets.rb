class CreateBookingTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_tickets do |t|
      t.string :No_Of_Tickets_Available
      t.string :Movie_Name
      t.string :Ticket_Number
      t.string :Date
      t.string :Time
      t.string :Venue
      t.string :Ticket_ID

      t.timestamps
    end
  end
end
