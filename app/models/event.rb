class Event < ApplicationRecord
  has_many :played_games, dependent: :destroy

  validates_presence_of :date
  validates_uniqueness_of :date
end
