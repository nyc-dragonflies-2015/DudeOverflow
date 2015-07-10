require 'rails_helper'

describe Vote do
  let(:db_vote_array) { [] }
  let(:vote) { Vote.create(count: 1)}
  let(:valid_count) {Vote.new(count: 1)}
  let(:invalid_count) {Vote.new(count: nil)}

  it "should be a valid vote if count is present" do
    expect(valid_count).to be_valid
  end

  it "should add a Vote to the database" do
    db_vote_array << vote
    expect(db_vote_array.length).to eq(1)
  end

  it "should remove a Vote from the database" do
    vote.destroy
    expect(db_vote_array.length).to eq(0)
  end
end