FactoryGirl.define do
  factory :teacher do
    email 'lorem@example.com'
    password 'password'
  end

  factory :lesson do
    name 'lorem'
    description 'ipsum'
    teacher
  end
end
