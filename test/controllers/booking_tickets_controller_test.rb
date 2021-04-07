require 'test_helper'

class BookingTicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking_ticket = booking_tickets(:one)
  end

  test "should get index" do
    get booking_tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_booking_ticket_url
    assert_response :success
  end

  test "should create booking_ticket" do
    assert_difference('BookingTicket.count') do
      post booking_tickets_url, params: { booking_ticket: { Date: @booking_ticket.Date, Movie_Name: @booking_ticket.Movie_Name, No_Of_Tickets_Available: @booking_ticket.No_Of_Tickets_Available, Ticket_ID: @booking_ticket.Ticket_ID, Ticket_Number: @booking_ticket.Ticket_Number, Time: @booking_ticket.Time, Venue: @booking_ticket.Venue } }
    end

    assert_redirected_to booking_ticket_url(BookingTicket.last)
  end

  test "should show booking_ticket" do
    get booking_ticket_url(@booking_ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_booking_ticket_url(@booking_ticket)
    assert_response :success
  end

  test "should update booking_ticket" do
    patch booking_ticket_url(@booking_ticket), params: { booking_ticket: { Date: @booking_ticket.Date, Movie_Name: @booking_ticket.Movie_Name, No_Of_Tickets_Available: @booking_ticket.No_Of_Tickets_Available, Ticket_ID: @booking_ticket.Ticket_ID, Ticket_Number: @booking_ticket.Ticket_Number, Time: @booking_ticket.Time, Venue: @booking_ticket.Venue } }
    assert_redirected_to booking_ticket_url(@booking_ticket)
  end

  test "should destroy booking_ticket" do
    assert_difference('BookingTicket.count', -1) do
      delete booking_ticket_url(@booking_ticket)
    end

    assert_redirected_to booking_tickets_url
  end
end
