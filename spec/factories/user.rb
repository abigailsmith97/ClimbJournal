FactoryBot.define do
    factory :user do
      # Add attributes for the user model here
      # For example:
      email { Faker::Internet.email }
      password { 'password123' }
      # ...
    end
  end
  