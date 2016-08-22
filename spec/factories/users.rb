FactoryGirl.define do
  factory :user do
    email "piet#{Random.rand(999999)}@mail#{Random.rand(999999)}.com"
    first_name "Piet"
    last_name "Boer"
    birth_date "2001-08-22"
    gender "male"
  end
end
