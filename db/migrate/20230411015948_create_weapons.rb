class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :type
      t.string :image_url
      t.belongs_to :movie_character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
