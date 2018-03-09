FactoryBot.define do
  factory :organization do
    sequence(:name) {|n| "Setting#{n}"}
  end

  factory :user do
    association :organization, factory: :organization
    sequence(:email) { Faker::Internet.email }
    password "small_axe"
  end


  factory :project do
    association :organization, factory: :organization
    title 'My project'
  end

  factory :event do
    association :project, factory: :project
  end
end
