class Birth < ApplicationRecord
  belongs_to :era
  belongs_to :movie_character
end
