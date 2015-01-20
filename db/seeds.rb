# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Opinion.delete_all
BusinessMethod.delete_all
HomePage.delete_all
CompanyDatum.delete_all

User.create!(name: 'Kamil T',
            email: 'kam@gmail.com',
            password: 'kamil007',
            password_confirmation: 'kamil007',
            admin: true)

20.times do
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

20.times do
  users.each do |user|
    content = Faker::Lorem.sentence(10)
    user.create_opinion!(content: content)
  end
end

BusinessMethod.create(title: 'Tynki Agregatem', content: Faker::Lorem.sentence(100), met_title: Faker::Lorem.sentence(3), met_description: Faker::Lorem.sentence(5), met_keywords: Faker::Lorem.sentence(10))
BusinessMethod.create(title: 'Wylewki Mixokrętem', content: Faker::Lorem.sentence(100), met_title: Faker::Lorem.sentence(3), met_description: Faker::Lorem.sentence(5), met_keywords: Faker::Lorem.sentence(10))
BusinessMethod.create(title: 'Posadzki Przemysłowe', content: Faker::Lorem.sentence(100), met_title: Faker::Lorem.sentence(3), met_description: Faker::Lorem.sentence(5), met_keywords: Faker::Lorem.sentence(10))

HomePage.create(title: 'Start', content: Faker::Lorem.sentence(100), met_title: Faker::Lorem.sentence(3), met_description: Faker::Lorem.sentence(5), met_keywords: Faker::Lorem.sentence(10), carousel:
    '<div class="item"><img src="assets/lion_27-wallpaper-1366x768.jpg" alt="Owl Image"></div>
  <div class="item"><img src="assets/the_book_of_life_2014-wallpaper-1366x768.jpg" alt="Owl Image"></div>
  <div class="item"><img src="assets/vector_lion-wallpaper-1366x768.jpg" alt="Owl Image"></div>')

CompanyDatum.create(title: 'Kontakt', content: Faker::Lorem.sentence(100), met_title: Faker::Lorem.sentence(3), met_description: Faker::Lorem.sentence(5), met_keywords: Faker::Lorem.sentence(10), name: Faker::Company.name, address: Faker::Address.street_address, email: Faker::Internet.email, phone: Faker::PhoneNumber.phone_number, mob_phone: Faker::PhoneNumber.cell_phone)