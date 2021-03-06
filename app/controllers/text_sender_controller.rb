class TextSenderController < ApplicationController

  def send_text
    number_to_send_to = params[:number_to_send_to]
    message_to_send = params[:message_to_send]


    twilio_sid = ENV['TWIL_SID'] || raise("No twilio id environment variable set!")
    twilio_token = ENV['TWIL_TOKEN']  || raise("No twilio token environment variable set!")
    twilio_phone_number = ['TWIL_NUM']  || raise("No twilio phone number  environment variable set!")

    @twil_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twil_client.account.sms.messages.create(
                                             :from => "+1#{twilio_phone_number}",
                                             :to => number_to_send_to,
                                             :body => message_to_send
                                             )

  end

end
