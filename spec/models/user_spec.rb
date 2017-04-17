require 'rails_helper'

RSpec.describe User do
  it "should be valid with a username" do
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
  end

  it "should not be valid without a username" do
    user = FactoryGirl.build(:user, username: "")
    expect(user).to_not be_valid
  end

  it "should not be valid without a password" do
    user = FactoryGirl.build(:user, password: nil)
    expect(user).to_not be_valid
  end
end
