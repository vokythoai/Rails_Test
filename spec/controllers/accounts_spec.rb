require 'rails_helper'
require 'spec_helper'

describe AccountsController,type: :controller do
    describe "GET #edit" do
    it "render template" do
        get "index"
        expect(response).to render_template("application")
        expect(response).to have_http_status(200)
    end
  end
  end


describe "abc" do

  it "adasd" do
    expect("Thoai").to start_with("T")
  end
  end