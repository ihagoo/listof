json.extract! movie, :id, :name, :gender, :status, :assessment, :comment, :created_at, :updated_at
json.url movie_url(movie, format: :json)
