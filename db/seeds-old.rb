AdminUser.create(email: "admin@test.com", password: "123123", password_confirmation: "123123", first_name: "Marge", last_name: "Simpson", age: "44", education: "HS", url: "marge.jpg")
puts "created admin user"




Course.create(name: "SEI", hours: "95")
Course.create(name: "UIUX", hours: "85")
Course.create(name: "WebDesign", hours: "90")

puts "3 courses created"

Cohort.create(name: "Methods1", start_date: "2018-05-11", end_date: "2018-08-22", course_id: "1")
Cohort.create(name: "Methods2", start_date: "2018-06-11", end_date: "2018-08-12", course_id: "2")
Cohort.create(name: "Edgecase1", start_date: "2018-07-11", end_date: "2018-09-22", course_id: "1")
Cohort.create(name: "Edgecase2", start_date: "2018-04-11", end_date: "2018-06-12", course_id: "3")
Cohort.create(name: "Function1", start_date: "2018-05-21", end_date: "2018-08-11", course_id: "3")
Cohort.create(name: "Function2", start_date: "2018-06-21", end_date: "2018-08-29", course_id: "1")

puts "3 cohorts for each course created"

User.create(email: "elizabeth@test.com", password: "123123", password_confirmation: "123123", first_name: "Elizabeth", last_name: "Hoover", age: "33", education: "BS Chemistry", url: "elizabeth@test.com", salary: "55,000", role: "instructor")
User.create(email: "burns@test.com", password: "123123", password_confirmation: "123123", first_name: "Mr", last_name: "Burns", age: "33", education: "MS", url: "burns@test.com", salary: "55,000", role: "instructor")
User.create(email: "ned@test.com", password: "123123", password_confirmation: "123123", first_name: "Ned", last_name: "Flanders", age: "31", education: "BS", url: "ned@test.com", salary: "39,000", role: "instructor")
User.create(email: "apu@test.com", password: "123123", password_confirmation: "123123", first_name: "Apu", last_name: "LongName", age: "32", education: "Culinary Art", url: "apu@test.com", salary: "45,000", role: "instructor")
User.create(email: "homer@test.com", password: "123123", password_confirmation: "123123", first_name: "Homer", last_name: "Simpson", age: "40", education: "Not clear", url: "homer@test.com", salary: "35,000", role: "instructor")
User.create(email: "krusty@test.com", password: "123123", password_confirmation: "123123", first_name: "Krusty", last_name: "Clown", age: "45", education: "None", url: "krusty@test.com", salary: "38,000", role: "instructor")

puts 'created instructors'


User.create(email: "lisa@test.com", password: "123123", password_confirmation: "123123", first_name: "Lisa", last_name: "Simpson", age: "19", education: "HS", url: "lisa@test.com", role: "student")
User.create(email: "milhouse@test.com", password: "123123", password_confirmation: "123123", first_name: "Milhouse", last_name: "Van Houten", age: "20", education: "HS", url: "milhouse@test.com", role: "student")
User.create(email: "allison@test.com", password: "123123", password_confirmation: "123123", first_name: "Allison", last_name: "Taylor", age: "22", education: "HS", url: "allison@test.com", role: "student")
User.create(email: "ralph@test.com", password: "123123", password_confirmation: "123123", first_name: "Ralph", last_name: "Waggum", age: "19", education: "HS", url: "ralph@test.com", role: "student")
User.create(email: "edna@test.com", password: "123123", password_confirmation: "123123", first_name: "Edna", last_name: "Krabappel", age: "38", education: "MS", url: "edna@test.com", role: "student")
User.create(email: "waylon@test.com", password: "123123", password_confirmation: "123123", first_name: "Waylon", last_name: "Smithers", age: "38", education: "BS", url: "waylon@test.com", role: "student")
User.create(email: "skinner@test.com", password: "123123", password_confirmation: "123123", first_name: "Mr.", last_name: "Skinner", age: "48", education: "MS", url: "skinner@test.com", role: "student")
User.create(email: "barney@test.com", password: "123123", password_confirmation: "123123", first_name: "Barney", last_name: "Grumble", age: "38", education: "HS", url: "barney@test.com", role: "student")
User.create(email: "bart@test.com", password: "123123", password_confirmation: "123123", first_name: "Bart", last_name: "Simpson", age: "28", education: "BS", url: "bart@test.com", role: "student")


