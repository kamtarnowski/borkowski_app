# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 'Kamil T',
            email: 'kam@gmail.com',
            password: 'kamil007',
            password_confirmation: 'kamil007',
            admin: true)

10.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  password = Faker::Internet.password(8)

  User.create!(name: name, email: email, password: password, password_confirmation: password)
end

users = []
User.all.each do |user|
  next if user.admin?
  users << user
end

10.times do
  content = Faker::Lorem.sentence(10)
  users.each { |user| user.create_opinion!(content: content) }

end
