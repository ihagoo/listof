json.extract! serie, :id, :name, :gender, :status, :assessment, :comment, :created_at, :updated_at
json.url serie_url(serie, format: :json)
