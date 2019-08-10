# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# run rails db:seed
User.destroy_all
Category.destroy_all
Post.destroy_all

def seed_users
  user_id = 0
  10.times do
    User.create(
      name: Faker::Superhero.name,
      email: "name#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id = user_id + 1
  end
end


def seed_categories
  hobby = ['Arts', 'Crafts', 'Sports', 'Sciences', 'Collecting', 'Reading', 'Other']
  study = ['Arts and Humanities', 'Physical Science and Engineering', 'Math and Logic',
          'Computer Science', 'Data Science', 'Economics and Finance', 'Business',
          'Social Sciences', 'Language', 'Other']
  team = ['Study', 'Development', 'Arts and Hobby', 'Other']

  hobby.each do |name|
    Category.create(branch: 'hobby', name: name)
  end

  study.each do |name|
    Category.create(branch: 'study', name: name)
  end

  team.each do |name|
    Category.create(branch: 'team', name: name)
  end
end

def seed_posts
  categories = Category.all

  categories.each do |category|
    5.times do
      Post.create(
        title: Faker::Quote.famous_last_words,
        content: Faker::Quote.yoda,
        user_id: User.all.sample.id,
        category_id: category.id
      )
    end
  end
end

seed_users
puts "Created Users"
seed_categories
puts "Created Categories"
seed_posts
puts "Created Posts"
