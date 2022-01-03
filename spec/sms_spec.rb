require 'sms'

describe SMS do
 
   it 'can send confirmation text via Twilio' do
     expect(subject).to respond_to(:twilio_message).with(1).argument
   end
# in order to test SMS sending ~I would need to buils a stub and add functionalit as per
# https://www.twilio.com/docs/openapi/mock-api-generation-with-twilio-openapi-spec 
end
