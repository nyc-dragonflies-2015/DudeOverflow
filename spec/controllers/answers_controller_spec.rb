require 'rails_helper'

describe AnswersController do
  describe "GET show" do
    it "should show an answer to a question" do
      answer = Answer.create(body: "test")
      get :show, id: answer.id
      expect(response).to render_template("show")
    end
  end
end