require 'spec_helper'

describe TextRecieverController do

  ENV['TWIL_SID'] = 'TestSID'
  ENV['TWIL_TOKEN'] = 'TestTOKEN'
  ENV['TWIL_NUM'] = 'TestTWILNUM'

  describe "Recieving an sms" do
    context "with valid data" do
      it "Recieves a text" do

        data = {"Body" => "Woooo","From" => "5555555555"}
        post :smsRecieve, data
        # response.should be_success
        expect(response).to be_success
      end

      it "Returns twiml" do
        data = {"Body" => "Woooo","From" => "5555555555", "FromState" => "NY", "FromCity" => "New York"}
        post :smsRecieve, data

        expected = "<Response> <Sms>Hey, thanks for the text! Hmm... you wouldn't be from New York, NY by any chance?</Sms></Response> "
        expect(response).to eq(expected)

      end

    end

  end


end
