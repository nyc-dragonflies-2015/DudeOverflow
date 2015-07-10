require 'rails_helper'

describe User do
  let(:db_array) { [] }
  let(:user) { User.create(username: "Mike", password: "123")}
  let(:valid_username) {User.new(username: "Mike", password: "123")}
  let(:invalid_username) {User.new(username: nil, password: "123")}
  let(:valid_password) {User.new(username: "mike", password: "123")}
  let(:invalid_password) {User.new(username: "mike", password: nil)}

  it "should be valid if a username is present" do
    expect(valid_username).to be_valid
  end

  it "should be invalid if no username is present" do
    expect(invalid_username).not_to be_valid
  end

  it "should be valid if a password is present" do
    expect(valid_password).to be_valid
  end

  it "should be invalid if a password is not present" do
    expect(invalid_password).not_to be_valid
  end

  it "should add a User to the database" do
    db_array << user
    expect(db_array.length).to eq(1)
  end

  it "should remove a User from the database" do
    user.destroy
    expect(db_array.length).to eq(0)
  end

  it "should only allow unique usernames" do
    db_array << user
    user2 = User.create(username: "Mike", password: "321")
    expect(db_array.length).to eq(1)
  end
end