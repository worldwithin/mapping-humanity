class WorkImage < ActiveRecord::Base
  belongs_to :work

  validates :image, presence: true

  mount_uploader :image, CoverImageUploader
end
