require 'rails_helper'


describe "accounts/index.html.erb" do
  it "right display" do
  assign(:accounts,Account.create(account_name: "Thoai",account_role: "amdin"))
  render
  expect(rendered).to have_selector("table#product_#{@product.id} tbody tr:nth-of-type(1) td:nth-of-type(1)", text: 'Shirt')
end
end