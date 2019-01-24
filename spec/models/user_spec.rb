require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with valid attributes' do
    it 'should save' do
      expect(build(:user)).to be_valid
    end
  end
  context 'without valid attributes' do
    it 'should not save with empty name' do
      expect(build(:user, name: "")).to be_invalid
    end
  end
end
