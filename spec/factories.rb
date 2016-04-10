FactoryGirl.define do
  factory :user do
    
  end
  factory :event do
    venue_id 1
    band_id 1
    date "2016-04-10"
    time "2016-04-10 16:55:48"
  end
  factory :band do
    name "MyString"
  end
  factory :venue do
    name "MyString"
  end
end
