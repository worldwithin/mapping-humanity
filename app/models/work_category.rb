class WorkCategory < ActiveRecord::Base
  belongs_to :work
  belongs_to :category

  validates :work_id, :category_id, presence: true
end
