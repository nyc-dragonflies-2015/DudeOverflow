require 'rails_helper'

describe SessionsController do
  let(:user) {User.create(username: "mike", password: "123")}

  describe "GET new" do
    it "should create a new session for user" do
      get :new
      expect(response).to render_template("new")
    end
  end

end