json.extract! filme, :id, :name, :data_launch, :category, :assessment, :status, :comment, :created_at, :updated_at
json.url filme_url(filme, format: :json)
