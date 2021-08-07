FactoryBot.define do
  factory :user do
    name { '岩間' }
    email { 'test@example.com' }
    password { "foobar" }
    password_confirmation { "foobar" }
  end
end