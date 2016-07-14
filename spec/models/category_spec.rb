require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
  end

  describe 'Relations' do
    it { should have_many(:person_categories) }
    it { should have_many(:people).through(:person_categories) }
  end
end
