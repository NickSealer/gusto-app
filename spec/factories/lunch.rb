# frozen_string_literal: true

FactoryBot.define do
  factory :lunch do
    name { Faker::Food.dish }
    description { Faker::Food.description }
    scheduled_to { Faker::Date.in_date_period }
  end
end
