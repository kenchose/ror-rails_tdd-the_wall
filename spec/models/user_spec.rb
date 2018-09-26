require 'rails_helper'

RSpec.describe User, type: :model do
  context "With valid attributes" do
    it "should save" do
      expect(build(:user)).to be_valid
    end
  end
  context "With invalid attributes" do
    it "should not save if less than 10 characters in username" do
      expect(build(:user, username:"asc")).to be_invalid
    end

    it "should not save if username is not unique" do
      create(:user)
      expect(build(:user)).to be_invalid
    end

    it "should not save if username field is empty" do
      expect(build(:user, username:"")).to be_invalid
    end
  end
end
