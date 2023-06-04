class Game < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :stocked
  validates_uniqueness_of :title
  validates_inclusion_of :stocked, in: [true, false]
end
