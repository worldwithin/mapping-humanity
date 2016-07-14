class WorkCategory < ActiveRecord::Base
  belongs_to :work
  belongs_to :category
end
