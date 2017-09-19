User.create name: "Chu Kim Thang", email: "chukimthang94@gmail.com", 
  password: "123456", password_confirmation: "123456", admin: true

User.create name: "Kim Thang Chu", email: "thangck94@gmail.com", 
  password: "123456", password_confirmation: "123456"

30.times do |n|
  name = Faker::Name.name
  email = "email#{n}@email.com"
  password = "123456"
  password_confirmation = "123456"

  User.create name: name, email:email, password: password, password_confirmation: password_confirmation
end

users = User.order(:created_at).take 10
40.times do
  content = Faker::Lorem.sentence 5
  users.each {|user| user.microposts.create! content: content}
end
