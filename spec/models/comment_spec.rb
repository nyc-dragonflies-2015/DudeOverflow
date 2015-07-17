require 'rails_helper'

describe Comment do
  let(:db_comment_array) { [] }

  # The subclassing of factories would be a huge help here.
  # https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md#inheritance
  #
  let(:comment) {Comment.create(body: "Testing")}
  let(:valid_comment_body) {Comment.new(body: "Rspec Test")}
  let(:invalid_comment_body) {Comment.new(body: nil)}

  it "should be valid if body is present" do
    expect(valid_comment_body).to be_valid
  end

  it "should be invalid if body is not present" do
    expect(invalid_comment_body).not_to be_valid
  end

  it "should add a comment to array if body   present" do
    db_comment_array << comment
    expect(db_comment_array.length).to eq(1)
  end

  it "should remove a comment from array" do
    comment.destroy
    expect(db_comment_array.length).to eq(0)
  end
end
