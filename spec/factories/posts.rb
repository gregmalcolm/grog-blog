# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    post "MyText"
    published_on "2013-05-10 17:09:13"
    tags "MyString"
    properties ""
  end
end
