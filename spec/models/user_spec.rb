require 'rails_helper'

describe User, type: :model do
  describe "class methods" do
    context "when a user gives an email address" do
      it "recognizes a valid email" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(User.validate_email("april@email.com")).to eq(april)
      end

      it "recognizes an invalid email" do
        april = User.create!(name: "April", email: "april@email.com", password: "123456")
        expect(User.validate_email("dagonese@email.com")).to eq(nil)
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
