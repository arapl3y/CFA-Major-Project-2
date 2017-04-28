require 'rails_helper'

RSpec.describe ItemRequest do
  it "is invalid without a user id" do
    item_request = FactoryGirl.build(:item_request, user_id: nil)
    expect(item_request).not_to be_valid
  end
end
