puts "1. Seeding Admin"
  User.create!(name: "admin", email: "admin@gmail.com", password: "123456", role: 1, username: "admin", phone: "123456", address: "qwe", dob: DateTime.now)

  puts "2. Seeding Doctor"
  User.create!(name: "doctor", email: "doctor@gmail.com", password: "123456", role: 2, username: "doctor", phone: "123456", address: "qwe", dob: DateTime.now)

puts "2. Seeding User"
20.times do |i|
  User.create!(name: FFaker::Name.unique.name, email: FFaker::Internet.email, password: FFaker::Internet.password, role: 0, username: "user#{i}")
end

puts "3. Seeding Desease"
2.times do |i|
  20.times do
    Desease.create!(pet_type: i, name: FFaker::Name.unique.name, symptom: FFaker::HealthcareIpsum.words, reason: FFaker::HealthcareIpsum.sentence, treatment:FFaker::HealthcareIpsum.sentence, description:FFaker::HealthcareIpsum.sentence)
  end
end

puts "4. Seeding Service"
20.times do
  Service.create!(name: FFaker::Name.unique.name, price: 30000)
end

random = Random.new

puts "5. Seeding Pet"
User.all.each do |user|
  5.times do
    Pet.create!(user_id: user.id, name: FFaker::Name.unique.name, image: FFaker::Image.url, gender: random.rand(0..1), type_pet: random.rand(0..1))
  end
end
