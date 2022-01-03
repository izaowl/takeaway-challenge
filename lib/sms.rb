class SMS
    require 'twilio-ruby'
    require 'dotenv'

  def twilio_message(total)
    account_sid =  ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)
    from = ENV['TWILIO_NUMBER']# Your Twilio number
    to = ENV['TO_NUMBER']# Your mobile phone number
    t = Time.now
    t1 = t + (60*60)
    client.messages.create(
    from: from,
    to: to,
    body: "Thank you! Your order was placed and will be delivered before ") #ßt1.strftime("%l:%M:%p")
  end
end
