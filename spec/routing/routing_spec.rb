 require 'rails_helper'

describe "routing to profiles", :type => :routing do
  it "routes /profile/:username to profile#show for username" do
    expect(:get => "/accounts/show/kakka").to be_routable
  end
end