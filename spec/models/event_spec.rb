require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { create(:event) }

  describe 'associations' do
    it { should have_many(:played_games).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:date) }
    it { should validate_uniqueness_of(:date) }
  end
end
