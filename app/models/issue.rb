class Issue < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :title, :description, presence: true
  validates :link, :video, format: { with: URI.regexp }, allow_blank: true

  scope :approved, -> {where(approved: true)}
end
