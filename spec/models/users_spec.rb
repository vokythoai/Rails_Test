require 'rails_helper'
require 'spec_helper'

describe Account,type: :model do
  before(:each) do
  end

  let(:account) {Account.create(account_name: "Thoai",account_role: "admin")}
  it "Valid User" do

    should be_an_instance_of Account
    account.account_name.should eq("Thoai")
    # expect {account.save}.to raise_error(ActiveRecord::RecordInvalid)
    should respond_to(:account_name)
    expect(["barn", "food", 2.45]).to include(a_string_starting_with("bar"))

    expect(10).to be_within(1).of(9)
    expect(true).to be false
    expect{account.save}.to raise_error(ActiveRecord::RecordInvalid)

  end
  it "Array" do
    expect(["dgjsdgf",1,2,"fsdf"]).not_to include("asasa")
  end
end



