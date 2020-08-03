FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name             {Faker::lastName}
    first_name            {Faker::firstName}
    last_name_reading     {Faker::lastKanaName}
    first_name_reading    {Faker::firstKanaName}
    birthday              {Faker::date.max: now}
  end
end
