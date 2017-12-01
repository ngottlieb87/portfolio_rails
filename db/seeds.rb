# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.destroy_all
User.destroy_all
user_list = [
  ["n@n.com", "noah", true, "$2a$10$EQBl12kTokjEGpkM2NAm7OPfY.JYjMj9us.qvqa81MnXJGsgBhw6a", "$2a$10$EQBl12kTokjEGpkM2NAm7O"]
]

user_list.each do |email, name, password, salt|
  User.create!(email: email, user_name: name, password_hash: password, password_salt: salt)
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
