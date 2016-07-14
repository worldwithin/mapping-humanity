class Work < ActiveRecord::Base
  has_many :work_categories
  has_many :categories, through: :work_categories

  validates :name, :description, :categories, presence: true
end
