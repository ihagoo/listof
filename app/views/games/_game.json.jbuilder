json.extract! game, :id, :name, :platform, :gender, :status, :difficulty, :assessment, :comment, :created_at, :updated_at
json.url game_url(game, format: :json)
