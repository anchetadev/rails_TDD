require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'with valid attributes' do
    it 'should save' do
      expect(build(:post)).to be_valid
    end
  end
  context 'without valid attributes' do
    it 'should not save with message less than 10 chars' do
      expect(build(:post, message: "")).to be_invalid
    end
  end
end
