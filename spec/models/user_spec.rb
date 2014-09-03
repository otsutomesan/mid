require 'rails_helper'

RSpec.describe User, :type => :model do

  #pending "add some examples to (or delete) #{__FILE__}"
  describe "hello method" do
    before do
      user = User.new
      user.name = "テスト 太郎"
      user.age = 30
      #user.profile = "私は、エンジニアです"
      user.save
      #@user = User.where("age = ?", 30).first
      @user = User.where("age" => 30).first
    end
    context "normal case." do
      it "not null" do
        #@user.hello.should_not be_nil
        expect(@user.hello).not_to be_nil
      end
      it "name値の比較" do
        result_val = @user.hello
        expect(result_val).to eq "テスト 太郎でござる"
        #expect(result_val).to eql("テスト 太郎でござる")
      end
    end
  end

  describe "age_up method てすと" do
    before do
      user = User.new
      user.name = "テスト 太郎"
      user.age = 30
      #user.profile = "私は、エンジニアです"
      user.save
      @user = User.where({age: 30}).first
    end
    context "normal case " do
      it " 30 > age 35"  do
        expect(@user.age_up).to be_within(5).of(30)
        #expect(@user.age_up).to eq 31
      end
    end
  end

end
