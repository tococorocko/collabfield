FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "test#{n}" }
    sequence(:branch) { |n| "test#{n}" }
  end
end
