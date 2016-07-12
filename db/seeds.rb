# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Rails.env.production?
  10.times do |index|
    AdminUser.create(name: "Admin #{index}", email: "admin_#{index}@example.com",
                     password: "123123123")
  end

  10.times do |index|
    works  = [true, false].suffle.first
    people = [true, false].suffle.first

    Category.create(name: "Category #{index}", people: people, works: works)
  end

  10.times do |index|
    Person.create(name: "Person #{index}")
  end
end
