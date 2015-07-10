require 'rails_helper'

describe Question do
  let(:db_question_array) { [] }
  let(:question) { Question.create(title: "RSPEC", body: "TEST")}
  let(:valid_title) {Question.new(title: "RSPEC", body: "TEST")}
  let(:invalid_title) {Question.new(title: nil, body: "TEST")}
  let(:valid_body) {Question.new(title: "RSPEC", body: "TEST")}
  let(:invalid_body) {Question.new(title: "RSPEC", body: nil)}

  it "should be a valid question if title is present" do
    expect(valid_title).to be_valid
  end

  it "should be invalid if question title is not present" do
    expect(invalid_title).not_to be_valid
  end

  it "should be valid if question body is present" do
    expect(valid_body).to be_valid
  end

  it "should be invalid if question body is not present" do
    expect(invalid_body).not_to be_valid
  end

  it "should add a Question to the database" do
    db_question_array << question
    expect(db_question_array.length).to eq(1)
  end

  it "should remove a Question from the database" do
    question.destroy
    expect(db_question_array.length).to eq(0)
  end
end