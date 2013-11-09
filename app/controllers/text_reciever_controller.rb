require 'twilio-ruby'

class TextRecieverController < ApplicationController

  def smsRecieve
    # TODO need to tell twilio where to send requests

    message_body = params["Body"]
    from_number = params["From"]
    @city = params["FromCity"]
    @state = params["FromState"]
    # SMSLogger.log_text_message from_number, message_body
    logger.debug "the message recieved was:\n '#{message_body}'\n from\n #{from_number} "

    #@parser = parseMessage message_body unless !message_body

    twilio_sid = ENV['TWIL_SID'] || raise("No twilio id environment variable set!")
    twilio_token = ENV['TWIL_TOKEN']  || raise("No twilio token environment variable set!")
    twilio_phone_number = ['TWIL_NUM']  || raise("No twilio phone number  environment variable set!")

    # @twil_bot = TWILIO::REST:Client.new twilio_sid, twilio_token

    # @twil_bot.account.messages.create(
    #            :from => twilio_phone_number,
    #            :to => from_number,
    #            :body => "Your message was recieved")
    @message_resp = prepareResponse(@city, @state)
    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

  def parseMessage( message_text)
    if message_text.include? "weather"
      parser = WeatherParser.initialize(message_text)
    end

  end #end parseMessage

  def prepareResponse(location_city, location_state)
    # should actually call to the forecast.io weather api here,
    # or better yet call to a wrapper that does that.
    response = "The weather for #{location_city}, #{location_state} is wintery! Stay warm"
    return response
  end

end
