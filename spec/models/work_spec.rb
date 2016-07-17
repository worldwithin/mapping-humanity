require 'rails_helper'

RSpec.describe Work, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :categories }
  end

  describe 'Relations' do
    it { should have_many(:work_images) }
    it { should have_many(:work_categories) }
    it { should have_many(:categories).through(:work_categories) }
  end
end
