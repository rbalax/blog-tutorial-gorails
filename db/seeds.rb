require 'faker'

20.times do |n|
  case n % 3
  when 0
    BlogPost.create(title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 3).join("\n\n"), published_at: nil)
  when 1
    BlogPost.create(title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 3).join("\n\n"), published_at: Time.current - rand(1..365).days)
  when 2
    BlogPost.create(title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 3).join("\n\n"), published_at: Time.current + rand(1..365).days)
  end
end
