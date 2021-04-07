class BookingTicketsController < ApplicationController
  before_action :set_booking_ticket, only: %i[ show edit update destroy ]

  # GET /booking_tickets or /booking_tickets.json
  
  def index
    @booking_tickets = BookingTicket.all
  end

  def reserve
    # @allSeatsVals = params[:allSeatsVals[]] #js variable
    logger.debug "\n#{params[:allSeatsVals]}, #{params[:allSeatsVals][1]}\n"
    @allSeatsVals = JSON.parse(params[:allSeatsVals])
    @allSeatsVals.each {
     |s|
     @seat = Seat.where(seat_no: s).update(seat_available: false)
    }
  end  


  # GET /booking_tickets/1 or /booking_tickets/1.json
  def show
  end

  # GET /booking_tickets/new
  def new
    @booking_ticket = BookingTicket.new(params[:booking_ticket])
  end

  # GET /booking_tickets/1/edit
  def edit
  end

  # POST /booking_tickets or /booking_tickets.json
  def create
    @booking_ticket = BookingTicket.new(booking_ticket_params)
    let = 'ABCDEFGHIJ'
    final = let.split('')
    final.each{ 
      |first| 
      for last in 1..12 do
        @seats = Seat.new(seat_no: first+last.to_s, seat_available: true, date: Time.now)
        @seats.save 
      end
    }

    respond_to do |format|
      if @booking_ticket.save
        format.html { redirect_to @booking_ticket, notice: "Booking ticket was successfully created." }
        format.json { render :show, status: :created, location: @booking_ticket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_tickets/1 or /booking_tickets/1.json
  def update
    respond_to do |format|
      if @booking_ticket.update(booking_ticket_params)
        format.html { redirect_to @booking_ticket, notice: "Booking ticket was successfully updated." }
        format.json { render :show, status: :ok, location: @booking_ticket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_tickets/1 or /booking_tickets/1.json
  def destroy
    @booking_ticket.destroy
    respond_to do |format|
      format.html { redirect_to booking_tickets_url, notice: "Booking ticket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_ticket
      @booking_ticket = BookingTicket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_ticket_params
      params.require(:booking_ticket).permit(:No_Of_Tickets_Available, :Movie_Name, :Ticket_Number, :Date, :Time, :Venue, :Ticket_ID, :Movie_ID)
    end
end
