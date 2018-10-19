AdminUser.create(email: "admin@test.com", password: "123123", password_confirmation: "123123", first_name: "Marge", last_name: "Simpson", age: "44", education: "HS", url: "marge.jpg")


Course.create(name: "SEI", hours: "95")
Course.create(name: "UIUX", hours: "105")
Course.create(name: "WebDesign", hours: "90")


Cohort.create(name: "Methods1", start_date: "2018-05-11", end_date: "2018-08-22", course_id: "1")
Cohort.create(name: "Methods2", start_date: "2018-06-11", end_date: "2018-08-12", course_id: "2")
Cohort.create(name: "Edgecase1", start_date: "2018-07-11", end_date: "2018-09-22", course_id: "1")
Cohort.create(name: "Edgecase2", start_date: "2018-04-11", end_date: "2018-06-12", course_id: "3")
Cohort.create(name: "Function1", start_date: "2018-05-21", end_date: "2018-08-11", course_id: "3")
Cohort.create(name: "Function2", start_date: "2018-06-21", end_date: "2018-08-29", course_id: "1")


User.create(email: "elizabeth@test.com", password: "123123", password_confirmation: "123123", first_name: "Elizabeth", last_name: "Hoover", age: "33", education: "BS Chemistry", url: "elizabeth@test.com", salary: "55,000", role: "instructor")


User.create(email: "lisa@test.com", password: "123123", password_confirmation: "123123", first_name: "Lisa", last_name: "Simpson", age: "19", education: "HS", url: "lisa@test.com", role: "student")


