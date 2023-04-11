json.extract! movie, :id, :title, :release_year, :lengt_theatrical, :length_extended, :image_url, :description, :wikipedia, :created_at, :updated_at
json.url movie_url(movie, format: :json)
