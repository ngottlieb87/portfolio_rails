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
  [1, "Pinelow Zoo", "https://github.com/ngottlieb87/PinelowZoo"],
  [1, "Doctor API", "https://github.com/ngottlieb87/doctorApi"]

  ]

project_list.each do |id, title, link|
  Project.create!( user_id: id, title: title, project_link: link )
end

p "Created #{Project.count} projects"
