class TextSenderController < ApplicationController

  def send_text
    number_to_send_to = params[:number_to_send_to]
    message_to_send = params[:message_to_send]

    # get the sensitive data from custom rails configuration settings
    twilio_sid = Rails.config.twilio_sid
    twilio_token = Rails.config.twilio_token
    twilio_phone_number = Rails.config.twilio_phone_number

    @twil_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twil_client.account.sms.messages.create(
                                             :from => "+1#{twilio_phone_number}",
                                             :to => number_to_send_to,
                                             :body => message_to_send
                                             )

  end

end
