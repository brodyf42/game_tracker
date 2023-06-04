FactoryBot.define do
  factory :game do
    sequence :title do |n|
      "game_#{n}"
    end
    stocked { true }
  end
end
