class Person < ActiveRecord::Base
  has_many :person_categories
  has_many :categories, through: :person_categories

  validates :name, :categories, presence: true

  mount_uploader :avatar, AvatarUploader

  scope :by_category, -> (category) { includes(:categories).where("categories.name" => category) }
end
