require 'rails_helper'

RSpec.describe WorkImage, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :image }
  end

  describe 'Relations' do
    it { should belong_to(:work) }
  end
end
