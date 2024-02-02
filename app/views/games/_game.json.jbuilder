json.extract! game, :id, :title, :system, :description, :themes, :image, :session_min_duration, :session_max_duration, :player_age_range, :price, :safety_details, :combat, :exploration, :roleplay, :experience, :platforms, :books_allowed, :player_preparation, :created_at, :updated_at
json.url game_url(game, format: :json)
