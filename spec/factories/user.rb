FactoryBot.define do
    factory :user do
      email { Faker::Internet.email }
      password { 'password123' }
      # Add any other attributes you need
    end
  end