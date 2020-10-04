FactoryBot.define do
  factory :tracker do
    uuid { Faker::Internet.uuid }
    page { Faker::Lorem.words(number: 1).first.capitalize }
    moment { DateTime.now }
  end
end
