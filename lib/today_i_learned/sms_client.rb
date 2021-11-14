# frozen_string_literal: true

require 'twilio-ruby'

# Client to send sms messages to my phone
class SMSClient
  attr_reader :client, :to, :from

  def initialize
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    @from = ENV['TWILIO_NUMBER']
    @to = ENV['MOBILE_NUMBER']
  end

  def send(message)
    client.messages.create(
      from: from,
      to: to,
      body: message
    )
  end
end
