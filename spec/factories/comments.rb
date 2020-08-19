FactoryBot.define do
  factory :comment do
    content { "MyString" }
    user { nil }
    ticket { nil }
  end
end
