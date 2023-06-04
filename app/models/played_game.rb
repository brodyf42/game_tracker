class PlayedGame < ApplicationRecord
  belongs_to :event
  belongs_to :game
end
