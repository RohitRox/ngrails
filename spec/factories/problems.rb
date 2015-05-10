FactoryGirl.define do
  factory :problem do
    title "MyString"
    content "MyString"
    answers { FactoryGirl.build(:answer).to_a }
  end

end
