class CreateMovieShows < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_shows do |t|
      t.string :movie_name
      t.string :movie_language
      t.string :movie_hour
      t.string :movie_type
      t.string :movie_date

      t.timestamps
    end
  end
end
