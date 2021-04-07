class MovieShowsController < ApplicationController
  before_action :set_movie_show, only: %i[ show edit update destroy ]

  # GET /movie_shows or /movie_shows.json
  def index
    @movie_shows = MovieShow.all
  end

  def itsshows
     @movie = MovieShow.find(params[:id]).movie_name
     @booking_tickets = BookingTicket.where(Movie_Name: @movie)
  end  

  # GET /movie_shows/1 or /movie_shows/1.json
  def show
  end

  # GET /movie_shows/new
  def new
    @movie_show = MovieShow.new
  end

  # GET /movie_shows/1/edit
  def edit
  end

  # POST /movie_shows or /movie_shows.json
  def create
    @movie_show = MovieShow.new(movie_show_params)

    respond_to do |format|
      if @movie_show.save
        format.html { redirect_to @movie_show, notice: "Movie show was successfully created." }
        format.json { render :show, status: :created, location: @movie_show }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_shows/1 or /movie_shows/1.json
  def update
    respond_to do |format|
      if @movie_show.update(movie_show_params)
        format.html { redirect_to @movie_show, notice: "Movie show was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_show }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_shows/1 or /movie_shows/1.json
  def destroy
    @movie_show.destroy
    respond_to do |format|
      format.html { redirect_to movie_shows_url, notice: "Movie show was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_show
      @movie_show = MovieShow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_show_params
      params.require(:movie_show).permit(:movie_name, :movie_language, :movie_hour, :movie_type, :movie_date, :video)
    end
end
