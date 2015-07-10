require 'rails_helper'

describe QuestionsController do
  let(:db_array) {[]}
  let(:question) {Question.create(title: "RSPEC", body: "TEST")}
  let(:found_question) {Question.find(question.id)}

  describe "GET index" do
    it "assigns @questions" do
      get :index
      expect(assigns(:questions)).to eq([question])
    end

    it "renders index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "assigns @question" do
      get :show, id: found_question.id
      expect(assigns(:question)).to eq(found_question)
    end

    it "should render a view for question" do
      get :show, id: found_question.id
      expect(response).to render_template("show")
    end
  end

  describe "GET new" do
    it "should reach form page" do
      expect(response).to have_http_status(200)
    end

    it "should show a 'Create question' form" do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe "POST create" do
    it "should create a new Question" do
      get :new
      db_array << question
      expect(db_array.length).to eq(1)
    end
  end

  describe "DELETE 'delete'" do
    it "should remove a question" do
      q = Question.create(title: "test", body: "testing")
      q.destroy
      expect(Question.all).to eq([])
    end

    it "should redirect to root path" do
      q = Question.create(title: "test", body: "testing")
      expect(response).to have_http_status(200)
    end
  end
end