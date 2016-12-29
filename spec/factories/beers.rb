FactoryGirl.define do
  factory :beer do
    beer_type { Faker::Crypto.sha256 }
    aroma { Faker::Food.spice }
    mouth_feel { Faker::Food.spice }
    kilo_calories 678
    abv 6.7
    abw 7.8
    flavour { Faker::Food.spice }
  end
end