class AddMovieShowsToSeats < ActiveRecord::Migration[5.2]
  def change
    add_reference :seats, :movie_shows, foreign_key: true
  end
end
