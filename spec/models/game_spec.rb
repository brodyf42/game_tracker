require 'rails_helper'

RSpec.describe Game, type: :model do
  subject { create(:game) }

  describe 'associations' do
    it { should have_many(:played_games).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_presence_of(:stocked) }
    it { should validate_inclusion_of(:stocked).in_array([true, false]) }
  end
end
