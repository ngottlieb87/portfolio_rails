User.destroy_all
Project.destroy_all

user_list = [
  ["n@n.com", "noah", true, "$2a$10$rnnIr3GrAveEXOrABRYpl.ENXYZLCheXapyEfHiGopcy9miW9EfBm" ,  "$2a$10$rnnIr3GrAveEXOrABRYpl."]
]

user_list.each do |email, name, admin, password, salt|
  User.create!(email: email, user_name: name, admin: admin, password_hash: password, password_salt: salt)
end

p "Created #{User.count} users"

project_list = [
  [1, "Pinelow Zoo", "https://github.com/ngottlieb87/PinelowZoo", "Angular project for zoo employees to add and update information for their animals"],
  [1, "Doctor API", "https://github.com/ngottlieb87/doctorApi", "Javascript project using open doctor api to allow users to find the right doctor for them."]

  ]

project_list.each do |id, title, link, description|
  Project.create!( user_id: id, title: title, project_link: link,  description: description)
end

p "Created #{Project.count} projects"
