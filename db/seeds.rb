# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Auto create 20 users"

(2..21).each do |i|
	User.create!(email: "#{i}@qq.com", password: '123456', password_confirmation: '123456', username: "测试用账号-#{i}")
end