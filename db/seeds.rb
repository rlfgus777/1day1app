# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |i|
  if i%2 == 0
    user = 1
  else
    user = 2
  end
  Memo.create!(title: "#{i+1} 번째 글이다 이야이야호", content: Faker::Lorem.paragraph(10), user_id: user)
end
