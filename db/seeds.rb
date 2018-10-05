10.times do |user|
  User.create(first_name: "Mary", last_name: "Poppins", age: "33", education: "BS Chemistry", email: "mary#{user}@mary.com", password: "123123", password_confirmation: "123123")
end
puts "10 users were created"

10.times do |course|
  Course.create!(name: "sei#{course}", hours: "35")
end

puts "10 courses have been created"