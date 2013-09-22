class TextRecieverController < ApplicationController

  def smsRecieve
    # TODO need to tell twilio where to send requests

    message_body = params["Body"]
    from_number = params["From"]

    # SMSLogger.log_text_message from_number, message_body
    logger.debug "the message recieved was:\n '#{message_body}'\n from\n #{from_number} "

    render :nothing => true

    @parser = parseMessage message_body unless !message_body

    # the following is the format of the Twilio post (json)
    # {
    #   "AccountSid"=>"asdf876a87f87a6sdf876876asd8f76a8sdf595asdD",
    #   "Body"=> body,
    #   "ToZip"=>"94949",
    #   "FromState"=>"MI",
    #   "ToCity"=>"NOVATO",
    #   "SmsSid"=>"asd8676585a78sd5f548a64sd4f64a467sg4g858",
    #   "ToState"=>"CA",
    #   "To"=>"5555992673",
    #   "ToCountry"=>"US",
    #   "FromCountry"=>"US",
    #   "SmsMessageSid"=>"hjk87h9j8k79hj8k7h97j7k9hj8k7",
    #   "ApiVersion"=>"2008-08-01",
    #   "FromCity"=>"GRAND RAPIDS",
    #   "SmsStatus"=>"received",
    #   "From"=>"5555992673",
    #   "FromZip"=>"49507"
    # }

    return "<Response>Recieved!<Response>"

  end

  def parseMessage( message_text)
    if message_text.include? "weather"
      parser = WeatherParser.initialize(message_text)
    end

  end

end
