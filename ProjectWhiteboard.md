## SMWeather Project idea board

### Intro
  SMWeather provides a simple service: text a number anytime you want and get the weather  forecast for the next 24 hours. Your account can be managed online, where you can change your location. This service is free for now...

### Feature
  * Text the SMWeather number any time of day and recieve a text message with the forcast for the next 24 hours.

  * Keep any other feature ideas to yourself, actually don't even think about them, this is the only feature. until it is complete.

### TO IMPLEMENT
I see this app as having 2 main portions, with a possible third...
#### Web UI
* Welcome page
* User Account creation
* User Account settings

#### Data Processing
* Deals with Twilio, to send/recieve texts
* Deals with a weather service, to fetch forcasts
  *  Forecast.io?
  * they have a pretty good free tier service, first 1000 api calls free every day.

#### Data Storage
* Stores user info,
* may need to store phone number and associated location for forecasts.
* Used by both of the other 2 parts

## Decisions
   * Use heroku for webapp hosting
   * Use Postgres
   * Twilio
   * Forecast.io
   * Start with Webpage

### Example Send text

    twilio_sid = ENV['TWIL_SID'] || raise("No twilio id environment variable set!")
    twilio_token = ENV['TWIL_TOKEN']  || raise("No twilio token environment variable set!")
    twilio_phone_number = ['TWIL_NUM']  || raise("No twilio phone number  environment variable set!")

     @twil_bot = TWILIO::REST:Client.new twilio_sid, twilio_token

     @twil_bot.account.messages.create(
                :from => twilio_phone_number,
                :to => from_number,
                :body => "Your message was recieved")


### NOTES
 We will need to figure out some way of converting from CITY, STATE
 to LATITUDE,LONGITUDE, aka some sort of geocoding service.
 http://railscasts.com/episodes/273-geocoder
