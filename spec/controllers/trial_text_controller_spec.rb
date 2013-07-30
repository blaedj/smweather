require 'spec_helper'

describe TrialTextController do

  describe "GET 'sendtext'" do
    it "returns http success" do
      get 'sendtext'
      response.should be_success
    end
  end

end
