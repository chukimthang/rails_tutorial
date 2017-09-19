User.create name: "Chu Kim Thang", email: "chukimthang94@gmail.com", 
  password: "123456", password_confirmation: "123456", admin: true

User.create name: "Kim Thang Chu", email: "thangck94@gmail.com", 
  password: "123456", password_confirmation: "123456"

40.times do |n|
  name = Faker::Name.name
  email = "email#{n}@email.com"
  password = "123456"
  password_confirmation = "123456"

  User.create name: name, email:email, password: password, password_confirmation: password_confirmation
end
