require 'rails_helper'

describe Item do
  it "has a valid factory" do
    factory = FactoryGirl.create(:item)
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
end
