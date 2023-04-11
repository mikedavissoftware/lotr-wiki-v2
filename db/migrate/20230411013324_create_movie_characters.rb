class CreateMovieCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_characters do |t|
      t.string :name
      t.string :image_url
      t.string :one_wiki_url
      t.string :tolkien_wiki_url
      t.string :pronunciation
      t.belongs_to :gender, null: false, foreign_key: true
      t.string :height
      t.belongs_to :culture, null: false, foreign_key: true
      t.string :spouse
      t.string :mother
      t.string :father
      t.text :description

      t.timestamps
    end
  end
end
