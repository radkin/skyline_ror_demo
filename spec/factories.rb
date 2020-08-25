FactoryBot.define do
  service_array = ["Test Service", "Test Service Two"]
  letter = ["a", "b", "c", "d"]
factory :random_Product, class: Product do
    Product { Faker::Lorem.Product }
    answer { Faker::Lorem.sentence }
    service { service_array.sample }
    number { Faker::Number.between(1, 2) }
    letter { letter.sample }
  end
end
