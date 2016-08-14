FactoryGirl.define do
  factory :user do
    name "User John Doe"
    email "user@example.com"
    password "123123123"
  end

  factory :work_image do
    work nil
    image "MyString"
  end

  factory :work_category do
    work nil
    category nil
  end

  factory :person_category do
    person nil
    category nil
  end

  factory :work do
    name "Example Work"
    description "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    cover_image ""
    raised_money 10_000_000
  end

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
