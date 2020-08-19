FactoryBot.define do
  factory :ticket do
    title { "MyString" }
    description { "MyString" }
    project { nil }
    status { nil }
    priority { nil }
    submitter { "" }
    assignee { nil }
  end
end
