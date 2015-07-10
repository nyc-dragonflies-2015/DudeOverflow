require 'rails_helper'

describe UsersController do
  describe "GET new" do

    it "should return OK status" do
      expect(response).to have_http_status(200)
    end

    it "should take you to a sign up page" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST create" do

    it "should create a new user" do
      db_array = []
      get :new
      user = User.create(username: "mike", password: "123")
      db_array << user
      expect(db_array.length).to eq(1)
    end
  end
end