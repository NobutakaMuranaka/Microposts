require 'rails_helper'

RSpec.describe Micropost, type: :model do
    let(:micropost) { FactoryBot.create(:micropost) }

    it "ユーザーid、ツイートがあれば有効な状態であること" do
        expect(micropost).to be_valid
    end
    
    
    it "ユーザーidがなければ無効な状態であること" do
        micropost.user_id = nil
        expect(micropost).to be_invalid
    end
    
    it "ツイートがなければ無効な状態であること" do
        micropost.content = nil
        expect(micropost).to be_invalid
    end
    
    it "ツイートが250文字以内であること" do
        micropost.content = "a" * 250
        expect(micropost).to be_invalid
    end

end