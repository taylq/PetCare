puts "1. Seeding Admin"
  User.create!(name: "admin", email: "admin@gmail.com", password: "123456", role: 1, username: "admin")

puts "2. Seeding User"
20.times do
  User.create!(name: FFaker::Name.name, email: FFaker::Internet.email, password: FFaker::Internet.password, role: 0, username: "")
end
