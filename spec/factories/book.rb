# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do |f|
    f.name "Book Spec 1"
    f.description "Description Book 1"
    f.isbn '9156789159753'
    f.published_year 1976
    f.genres { [FactoryGirl.create(:genre)] }
    f.author_id 1
    f.language_id 1
  end

  factory :book_2, class: Book do |f|
    f.name "Book Spec 2"
    f.description "Description Book 2"
    f.isbn '8145454578451'
    f.published_year 1976
    f.genres { [FactoryGirl.create(:genre)] }
    f.author_id 1
    f.language_id 1
  end
end
