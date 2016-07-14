require 'rails_helper'

RSpec.describe WorkCategory, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :work_id }
    it { should validate_presence_of :category_id }
  end

  describe 'Relations' do
    it { should belong_to :work }
    it { should belong_to :category }
  end
end
