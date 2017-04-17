require 'rails_helper'

describe Item do
  it "has a valid factory" do
    FactoryGirl.create(:item).should be_valid
  end

  it "is invalid without a title" do
    FactoryGirl.build(:item, title: nil).should_not be_valid
  end

  it "is invalid without a description" do
    FactoryGirl.build(:item, description: nil).should_not be_valid
  end
end
