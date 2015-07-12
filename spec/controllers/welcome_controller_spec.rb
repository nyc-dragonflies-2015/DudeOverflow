require 'rails_helper'

describe WelcomeController do

  describe "GET index" do
    it "should render the index page" do
      get :index
      expect(response).to render_template("index")
    end
  end
end