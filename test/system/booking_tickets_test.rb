require "application_system_test_case"

class BookingTicketsTest < ApplicationSystemTestCase
  setup do
    @booking_ticket = booking_tickets(:one)
  end

  test "visiting the index" do
    visit booking_tickets_url
    assert_selector "h1", text: "Booking Tickets"
  end

  test "creating a Booking ticket" do
    visit booking_tickets_url
    click_on "New Booking Ticket"

    fill_in "Date", with: @booking_ticket.Date
    fill_in "Movie name", with: @booking_ticket.Movie_Name
    fill_in "No of tickets available", with: @booking_ticket.No_Of_Tickets_Available
    fill_in "Ticket id", with: @booking_ticket.Ticket_ID
    fill_in "Ticket number", with: @booking_ticket.Ticket_Number
    fill_in "Time", with: @booking_ticket.Time
    fill_in "Venue", with: @booking_ticket.Venue
    click_on "Create Booking ticket"

    assert_text "Booking ticket was successfully created"
    click_on "Back"
  end

  test "updating a Booking ticket" do
    visit booking_tickets_url
    click_on "Edit", match: :first

    fill_in "Date", with: @booking_ticket.Date
    fill_in "Movie name", with: @booking_ticket.Movie_Name
    fill_in "No of tickets available", with: @booking_ticket.No_Of_Tickets_Available
    fill_in "Ticket id", with: @booking_ticket.Ticket_ID
    fill_in "Ticket number", with: @booking_ticket.Ticket_Number
    fill_in "Time", with: @booking_ticket.Time
    fill_in "Venue", with: @booking_ticket.Venue
    click_on "Update Booking ticket"

    assert_text "Booking ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Booking ticket" do
    visit booking_tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booking ticket was successfully destroyed"
  end
end
