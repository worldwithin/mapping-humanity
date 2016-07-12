FactoryGirl.define do
  factory :person do
    name "Person John Doe"
    avatar ""
  end

  factory :category do
    name "Category for People and Works"
    people true
    works true
  end

  factory :admin_user do
    name "Admin John Doe"
    email "admin@example.com"
    password "123123123"
  end
end
