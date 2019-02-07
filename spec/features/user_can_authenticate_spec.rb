require 'rails_helper'

describe "when an existing user provides email and password" do
  it "will log the user in" do
    april = User.new(email: "april@email.com", password: "123456")



  end
end
