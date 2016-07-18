class Work < ActiveRecord::Base
  has_many :work_images
  has_many :work_categories
  has_many :categories, through: :work_categories

  accepts_nested_attributes_for :work_images, allow_destroy: true

  validates :name, :description, :cover_image, :categories, presence: true

  mount_uploader :cover_image, CoverImageUploader

  scope :by_category, -> (category) { includes(:categories).where("categories.name" => category) }
end
