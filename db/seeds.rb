10.times do |course|
  Course.create!(name: "sei#{course}")
end

puts "10 courses have been created"