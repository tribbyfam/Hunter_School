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

User.create(email: "elizabeth@test.com", password: "123123", password_confirmation: "123123", first_name: "Elizabeth", last_name: "Hoover", age: "33", education: "BS Chemistry", url: "assets/images/Elizabeth_hoover.png")
User.create(email: "burns@test.com", password: "123123", password_confirmation: "123123", first_name: "Mr", last_name: "Burns", age: "33", education: "MS", url: "assets/images/Mr_Burns.jpg")
User.create(email: "ned@test.com", password: "123123", password_confirmation: "123123", first_name: "Ned", last_name: "Flanders", age: "31", education: "BS", url: "assets/images/Ned_Flanders.png")
User.create(email: "apu@test.com", password: "123123", password_confirmation: "123123", first_name: "Apu", last_name: "LongName", age: "32", education: "Culinary Art", url: "assets/images/Apu.png")
User.create(email: "homer@test.com", password: "123123", password_confirmation: "123123", first_name: "Homer", last_name: "Simpson", age: "40", education: "Not clear", url: "assets/images/homer.jpg")
User.create(email: "krusty@test.com", password: "123123", password_confirmation: "123123", first_name: "Krusty", last_name: "Clown", age: "45", education: "None", url: "assets/images/Krusty.png")

puts 'created instructors'


User.create(email: "lisa@test.com", password: "123123", password_confirmation: "123123", first_name: "Lisa", last_name: "Simpson", age: "19", education: "HS", url: "assets/images/Lisa.jpg")
User.create(email: "milhouse@test.com", password: "123123", password_confirmation: "123123", first_name: "Milhouse", last_name: "Van Houten", age: "20", education: "HS", url: "assets/images/milhouse.png")
User.create(email: "allison@test.com", password: "123123", password_confirmation: "123123", first_name: "Allison", last_name: "Taylor", age: "22", education: "HS", url: "assets/images/Lisa.jpg")
User.create(email: "ralph@test.com", password: "123123", password_confirmation: "123123", first_name: "Ralph", last_name: "Waggum", age: "19", education: "HS", url: "assets/images/Ralph_Wiggum.png")
User.create(email: "edna@test.com", password: "123123", password_confirmation: "123123", first_name: "Edna", last_name: "Krabappel", age: "38", education: "MS", url: "assets/images/Edna_Krabappel.png")
User.create(email: "waylon@test.com", password: "123123", password_confirmation: "123123", first_name: "Waylon", last_name: "Smithers", age: "38", education: "BS", url: "assets/images/Waylon_Smithers.jpg")
User.create(email: "skinner@test.com", password: "123123", password_confirmation: "123123", first_name: "Mr.", last_name: "Skinner", age: "48", education: "MS", url: "assets/images/skinner.png")
User.create(email: "barney@test.com", password: "123123", password_confirmation: "123123", first_name: "Barney", last_name: "Grumble", age: "38", education: "HS", url: "assets/images/Barney-Gumble.jpg")

puts 'regular users'

