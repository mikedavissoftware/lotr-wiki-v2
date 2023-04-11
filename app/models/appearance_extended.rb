class AppearanceExtended < ApplicationRecord
  belongs_to :movie
  has_one_attached :image
  has_rich_text :body
end
