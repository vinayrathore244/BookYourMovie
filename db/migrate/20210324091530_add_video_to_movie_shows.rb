class AddVideoToMovieShows < ActiveRecord::Migration[5.2]
  def change
    add_column :movie_shows, :video, :string
  end
end
