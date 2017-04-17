require 'rails_helper'

RSpec.describe Item do
  it "has a valid factory" do
    user = FactoryGirl.create(:user)
    factory = FactoryGirl.build(:item, :user_id => user.id)
    expect(factory).to be_valid
  end

  it "is invalid without a title" do
    item = FactoryGirl.build(:item, title: nil)
    expect(item).not_to be_valid
  end

  it "is invalid without a description" do
    item = FactoryGirl.build(:item, description: nil)
    expect(item).not_to be_valid
  end

  it "is invalid without a user id" do
    item = FactoryGirl.build(:item, user_id: nil)
    expect(item).not_to be_valid
  end
end
