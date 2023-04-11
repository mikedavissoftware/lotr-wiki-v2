class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :name
      t.belongs_to :movie_character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
