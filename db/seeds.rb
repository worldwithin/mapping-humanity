# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Rails.env.production?
  printf "======> Creating Admin Users\n\n"
  10.times do |index|
    AdminUser.create(name: "Admin #{index}", email: "admin_#{index}@example.com",
                     password: "123123123")
  end

  printf "======> Creating Categories\n\n"
  10.times do |index|
    works  = [true, false].shuffle.first
    people = [true, false].shuffle.first

    Category.create(name: "Category #{index}", people: people, works: works)
  end

  printf "======> Creating People\n\n"
  10.times do |index|
    Person.create(name: "Person #{index}")
  end

  printf "======> Creating Works\n\n"
  10.times do |index|
    Work.create(name: "Project #{index}", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
  end
end
