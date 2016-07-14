require 'rails_helper'

RSpec.describe PersonCategory, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :person_id }
    it { should validate_presence_of :category_id }
  end

  describe 'Relations' do
    it { should belong_to :person }
    it { should belong_to :category }
  end
end
