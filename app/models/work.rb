class Work < ActiveRecord::Base
  validates :name, :description, presence: true
end
