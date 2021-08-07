FactoryBot.define do
  factory :micropost do
    content { "待っとったみたいに！" }
    association :user
  end
end