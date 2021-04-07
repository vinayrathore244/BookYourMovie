class BookingTicket < ApplicationRecord

 def check_available(seat)
   s = Seat.where(seat_no: seat)
 end

end
