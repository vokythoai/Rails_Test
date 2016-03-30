require 'rails_helper'


describe "home page",type: :request do
    it "welcome" do
      get "/users/sign_in"
      assert_select "form.login" do
      assert_select "input[name=?]" ,"account_name"
     assert_select "input[name=?]","account_password"
      assert_select "input[type=?]","submit"
    end



    post "/login", :username => "jdoe", :password => "secret"
    assert_select ".header .username", :text => "jdoe"
     end
  end