json.extract! booking_ticket, :id, :No_Of_Tickets_Available, :Movie_Name, :Ticket_Number, :Date, :Time, :Venue, :Ticket_ID, :created_at, :updated_at
json.url booking_ticket_url(booking_ticket, format: :json)
