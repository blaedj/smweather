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
    end

    it "Returns twiml" do
      data = {"Body" => "Woooo","From" => "5555555555", "FromState" => "NY",
        "FromCity" => "New York"}
      get :smsRecieve, data

      expect(response).to render_template("text_reciever/process_sms.xml.erb")
    end

  end

end
