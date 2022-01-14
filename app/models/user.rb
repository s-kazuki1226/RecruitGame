class User < ApplicationRecord
  validates :model, presence: true
  validates :game_id, presence: true
end
