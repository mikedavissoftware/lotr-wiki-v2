class CreatePronouns < ActiveRecord::Migration[7.0]
  def change
    create_table :pronouns do |t|
      t.string :name
      t.belongs_to :gender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
