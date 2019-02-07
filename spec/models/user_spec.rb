require 'rails_helper'

describe User, type: :model do
  describe "class methods" do
    context "when a user gives an email address and password" do
      it "recognizes a valid email and password" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(User.authenticate("april@email.com", "123456")).to eq(april)
      end

      it "recognizes an invalid email" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(User.authenticate("dagonese@email.com", "123456")).to eq(nil)
      end

      it "recognizes an invalid password" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(User.authenticate("april@email.com", "654321")).to eq(nil)
      end
    end
  end

  describe "instance methods" do
    context "when a user gives a password" do
      it "recognizes a valid password" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(april.validate_password("123456")).to eq(april)
      end

      it "recognizes an invalid password" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(april.validate_password("654321")).to eq(nil)
      end
    end
  end
end
