require 'rails_helper'

describe CommentsController do
  let!(:user){ User.create password: 'temp', username: 'temp' }
  let!(:question) { Question.create body: "TEST", title: "TEST TITLE" }
  let!(:answer) { Answer.create body: "Answer", question: question }

  before(:each) do
    session[:user_id] = user.id
  end

  context "With Question as the commentable" do
    context "POST #create" do
      it "increases Comment count" do
        expect {
          post :create, comment: { body: "Test", user_id: user.id, commentable_id: question.id, commentable_type: "Question" }
        }.to change(Comment, :count).by(1)
      end

      it "redirects when not done over XHR" do
        post :create, comment: { body: "Test", user_id: user.id, commentable_id: question.id, commentable_type: "Question" }
        expect(response).to be_redirect
      end

      it "renders a partial when requested by XHR" do
        xhr :post, :create, comment: { body: "Test", user_id: user.id, commentable_id: question.id, commentable_type: "Question" }
        expect(response).to render_template(:create)
      end
    end
  end

  context "With Answer as the commentable" do
    it "POST #create" do
      expect {
        post :create, comment: { body: "Test", user_id: user.id, commentable_id: answer.id, commentable_type: "Answer" }
      }.to change(Comment, :count).by(1)
    end
  end
end
