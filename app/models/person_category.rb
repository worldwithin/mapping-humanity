class PersonCategory < ActiveRecord::Base
  belongs_to :person
  belongs_to :category
end
