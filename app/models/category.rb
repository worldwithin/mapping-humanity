class Category < ActiveRecord::Base
  validates :name, presence: true
  validate :has_at_least_one_purpose?

  protected

  def has_at_least_one_purpose?
    if people.false? && works.false?
      errors.add(:people, 'Must choose at least one purpose of use')
    end
  end
end
