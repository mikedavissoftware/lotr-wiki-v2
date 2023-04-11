json.extract! movie_character, :id, :name, :image_url, :one_wiki_url, :tolkien_wiki_url, :pronunciation, :gender_id, :height, :culture_id, :spouse, :mother, :father, :description, :created_at, :updated_at
json.url movie_character_url(movie_character, format: :json)
