class PersonCategory < ActiveRecord::Base
  belongs_to :person
  belongs_to :category

  validates :person_id, :category_id, presence: true
end
