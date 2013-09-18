require 'spec_helper'

describe TextRecieverController do

  describe "Recieving an sms " do

    context " with valid data" do

      it "Recieves a text" do

        data = {"Body" => "Woooo","From" => "5555555555"}
        post :smsRecieve, data
        # response.should be_success
        expect(response).to be_success
      end

    end

  end


end
