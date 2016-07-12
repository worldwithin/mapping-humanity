FactoryGirl.define do
  factory :category do
    name "Category for People"
    people true
    works false
  end

  factory :category do
    name "Category for Works"
    people false
    works true
  end

  factory :admin_user do

  end
end
