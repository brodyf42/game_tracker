require 'rails_helper'

RSpec.describe PlayedGame, type: :model do
  describe 'associations' do
    it { should belong_to(:event) }
    it { should belong_to(:game) }
  end
end
