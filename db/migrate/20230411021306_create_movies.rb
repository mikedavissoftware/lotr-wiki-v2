class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.integer :lengt_theatrical
      t.integer :length_extended
      t.string :image_url
      t.text :description
      t.string :wikipedia

      t.timestamps
    end
  end
end
