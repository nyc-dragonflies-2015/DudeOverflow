require 'rails_helper'

describe Answer do
  let(:db_answer_array) { [] }
  let(:answer) { Answer.create(body: "TEST")}
  let(:valid_body) {Answer.new(body: "TEST")}
  let(:invalid_body) {Answer.new(body: nil)}

  it "should be valid if body is present" do
    expect(valid_body).to be_valid
  end

  it "should be invalid if body is not present" do
    expect(invalid_body).not_to be_valid
  end

  it "should add an answer to the array if valid" do
    db_answer_array << answer
    expect(db_answer_array.length).to eq(1)
  end

  it "should remove an answer from array" do
    answer.destroy
    expect(db_answer_array.length).to eq(0)
  end
end