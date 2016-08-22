FactoryGirl.define do
  factory :job do
    title "MyString"
    start_date "2016-08-22"
    closing_date "2016-08-22"
    description "MyText"
    city "MyString"
    country "MyString"
    hours_a_week "40"
    responsibilities "MyText"
    experience_requirement "MyText"
    education_requirement "MyText"
    skill_requirements "MyText"
    official_requirements "MyText"
    pay_rate_minimum "9.99"
    pay_rate_maximum "9.99"
  end
end
