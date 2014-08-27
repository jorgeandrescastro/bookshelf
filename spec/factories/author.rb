# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author1 do |f|
    f.name "Author name 1"
    f.biography "Biography Author 1"
    f.birth_country "United States"
    f.birth_year '1950-03-06'
  end
end
