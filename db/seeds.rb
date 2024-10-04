require 'faker'

200.times do
    Tweet.create(
      Description: Faker::Quote.famous_last_worDs,
      UserName: Faker::Name.first_name,
    )
end