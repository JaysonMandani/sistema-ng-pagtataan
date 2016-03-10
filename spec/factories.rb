FactoryGirl.define do
  factory :teacher do
    sequence :email do |n|
      "lorem#{n}@example.com"
    end
    password 'password'
  end

  factory :lesson do
    name 'lorem'
    description 'ipsum'
    teacher
  end

  factory :schedule do
    date Date.today
    starts_at Date.today
    ends_at Date.today + 1.day
    daterange '2016-03-13'
    teacher
    lesson
  end

  factory :member do
    email 'lorem@example.com'
    password 'password'
  end

  factory :subscription do
    member
    schedule
  end
end
