class Issue < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, presence: true
  validates :link, :video, format: { with: URI.regexp }, allow_blank: true
end
