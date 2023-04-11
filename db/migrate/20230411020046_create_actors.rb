class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :wikipedia_url
      t.belongs_to :movie_character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
