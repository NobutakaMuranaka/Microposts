require "rails_helper"

RSpec.describe "ユーザー登録", type: :request do
    let!(:user) { create(:user) }

  it "有効なユーザーで登録" do
    expect {
      post users_path, params: { user: { name: "Example User",
                                         email: "user@example.com",
                                         password: "password",
                                         password_confirmation: "password" } }
    }.to change(User, :count).by(1)
  end

  it "無効なユーザーで登録" do
    expect {
      post users_path, params: { user: { name: "",
                                         email: "user@example.com",
                                         password: "password",
                                         password_confirmation: "pass" } }
    }.not_to change(User, :count)
  end
end