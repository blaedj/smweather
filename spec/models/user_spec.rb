require 'spec_helper'

describe User do

  before {@user = User.new( number: "218-555-5555")}

  it "Should have a number and a pin" do
    expect(@user.number).to eq("218-555-5555")
    expect(@user).to respond_to(:pin)
  end

end
