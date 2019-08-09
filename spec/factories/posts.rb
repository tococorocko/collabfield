FactoryBot.define do
  factory :post do
    title 'a' * 20
    content 'a' * 20
    user #simple associatons with FactoryBot
    category #simple associatons with FactoryBot
  end
end
