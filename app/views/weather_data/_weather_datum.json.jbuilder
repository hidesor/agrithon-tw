json.extract! weather_datum, :id, :created_at, :updated_at
json.url weather_datum_url(weather_datum, format: :json)