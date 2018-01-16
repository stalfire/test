# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Database for user
User.create(name: "stal", password: "stal")

user = {}
user['password'] = 'stal'

ActiveRecord::Base.transaction do
  20.times do 
    user['name'] = Faker::Name.name
    User.create(user)
  end
end 

# Seed Articles
article = {}
uids = []
User.all.each { |u| uids << u.id }

ActiveRecord::Base.transaction do
  40.times do 
    article['title'] = Faker::Food.dish
    article['user_id'] = uids.sample

    Article.create(article)
  end
end