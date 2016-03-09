# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

usernames = ["hanna", "jordan", "sophia", "lee", "mariel"]

5.times do |x|
	User.create(username: usernames[x], email:"#{x}@test.com", password: "password", password_confirmation:"password")
end
p "test users created"