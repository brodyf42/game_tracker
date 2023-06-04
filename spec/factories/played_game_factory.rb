FactoryBot.define do
  factory :played_game do
    event
    game
    player_count { 4 }
    winner { 'player' }
  end
end
