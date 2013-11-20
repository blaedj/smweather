require 'twilio-ruby'

class TextRecieverController < ApplicationController

   # this method should just pass the parameters it recieves
   # off to a message-parser, and that parser will return
   # the correct message.
  def smsRecieve
    message_body = params["Body"]
    from_number = params["From"]
    @city = params["FromCity"]
    @state = params["FromState"]

    @message_resp = prepareResponse(@city, @state)
    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

  def parseMessage( message_text)
    if message_text.include? "weather"
      parser = WeatherParser.initialize(message_text)
    end
  end

  def prepareResponse(location_city, location_state)
    # should actually call to the forecast.io weather api here,
    # or better yet call to a wrapper that does that.
    return "The weather for #{location_city}, #{location_state} is wintery! Stay warm"
  end

end
