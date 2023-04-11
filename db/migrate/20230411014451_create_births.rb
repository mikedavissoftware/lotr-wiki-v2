class CreateBirths < ActiveRecord::Migration[7.0]
  def change
    create_table :births do |t|
      t.integer :year
      t.belongs_to :era, null: false, foreign_key: true
      t.belongs_to :movie_character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
