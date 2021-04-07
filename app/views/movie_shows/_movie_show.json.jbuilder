json.extract! movie_show, :id, :movie_name, :movie_language, :movie_hour, :movie_type, :movie_date, :created_at, :updated_at
json.url movie_show_url(movie_show, format: :json)
