FactoryBot.define do
  factory :user do
    email 'adam.n.conway@gmail.com'
    uid 8722083
    token ENV["strava_my_token"]
  end
end
