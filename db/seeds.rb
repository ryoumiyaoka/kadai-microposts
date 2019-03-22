# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |number|
    user = User.create(name: "test" + number.to_s, email: "test" + number.to_s + "@test.jp", password: "t")
    10.times do |micropost_number|
        user.microposts.create!(content: "post" + micropost_number.to_s + " by " + user.name)
    end
end