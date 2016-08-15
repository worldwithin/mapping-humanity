require 'rails_helper'

RSpec.describe Issue, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :description }
  end

  describe 'Relations' do
    it { should belong_to :user }
  end
end
