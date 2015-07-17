require 'rails_helper'

describe AnswersController do
  describe "GET show" do
    # This can never work.  You don't have a show.html.erb (you re-named it to
    # be a partial, which is probably a bad idea since `show` is a
    # special template name.  You should delete this.
    #
    # it "should show an answer to a question" do
    #   answer = Answer.create(body: "test")
    #   get :show, id: answer.id
    #   expect(response).to render_template("show")
    # end
  end
end
