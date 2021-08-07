require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  context "バリデーション" do
    it "名前、メールアドレスがあれば有効な状態であること" do
      expect(user).to be_valid
    end

    it "名前がなければ無効な状態であること" do
      user = build(:user, name: nil)
      user.valid?
    end

    it "メールアドレスがなければ無効な状態であること" do
      user = build(:user, email: nil)
      user.valid?
    end

    it "重複したメールアドレスなら無効な状態であること" do
      other_user = build(:user, email: user.email)
      other_user.valid?
    end

    it "パスワードがなければ無効な状態であること" do
      user = build(:user, password: nil, password_confirmation: nil)
      user.valid?
    end

  end
end