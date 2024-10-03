require 'faker'

50.times do
    Tweet.create(
      Description: Faker::Quote.famous_last_words,
      UserName: Faker::Name.first_name,
    )
end