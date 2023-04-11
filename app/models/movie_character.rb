class MovieCharacter < ApplicationRecord
  belongs_to :gender
  belongs_to :culture
end
