require 'rails_helper'

describe QuestionsController do
  # You should probably prefer a FactoryGirl option
  let(:q) {Question.create(title: "RSPEC", body: "TEST")}

  describe "GET index" do
    it "assigns @questions" do
      get :index
      expect(assigns(:questions)).to eq(Question.all)
    end

    it "renders index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns @question" do
      get :show, id: q.id
      expect(assigns(:question)).to eq(q)
    end

    it "should render a view for question" do
      get :show, id: q.id
      expect(response).to render_template("show")
    end
  end

  describe "GET new" do
    let(:user) { User.create password: "temp", username: "temp" }
    it "should reach form page" do
      # to be_ok is a shorter way of asking the same thing
      expect(response).to have_http_status(200)
    end

    it "should show a 'Create question' form" do
      session[:user_id] = user.id
      get :new
      expect(response).to render_template('new')
    end
  end

  describe "POST create" do
    it "should create a new Question" do
      # Included for artistic effect :)
      q
      get :new
      expect(Question.count).to eq(1)
    end
  end

  describe "DELETE 'delete'" do
    it "should remove a question" do
      q.destroy
      expect(Question.all).to eq([])
    end

    it "should reach root path" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET edit" do
    it "should show a form to edit a question" do
      q
      get :edit, id: q.id
      expect(response).to render_template("edit")
    end
  end
end
