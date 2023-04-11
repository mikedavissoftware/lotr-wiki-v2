class CreateAppearanceExtendeds < ActiveRecord::Migration[7.0]
  def change
    create_table :appearance_extendeds do |t|
      t.integer :minute
      t.integer :second
      t.belongs_to :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
