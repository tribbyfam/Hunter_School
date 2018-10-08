AdminUser.create(email: "admin@test.com", password: "123123", password_confirmation: "123123", first_name: "Marge", last_name: "Simpson", age: "44", education: "HS")

10.times do |user|
  User.create(first_name: "Mary", last_name: "Poppins", age: "33", education: "BS Chemistry", email: "mary#{user}@mary.com", password: "123123", password_confirmation: "123123")
end
puts "10 users were created"

10.times do |course|
  Course.create!(name: "sei#{course}", hours: "35", instructor: "Dr.Evil")
end

10.times do |cohorts|
  Cohort.create!(name: "Methods #{course}")
end
puts "10 courses have been created"