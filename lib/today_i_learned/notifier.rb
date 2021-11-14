# frozen_string_literal: true

require_relative 'quote'

# Prompt the User what they learned today based on the configured client
class Notifier
  QUESTION = 'What did you learn today?'

  attr_reader :client

  def initialize(client)
    @client = client
  end

  def send_notification
    todays_quote = Quote.random_quote
    message = "#{todays_quote.text} ~ #{todays_quote.author}\n#{QUESTION}"
    client.send(message)
  end
end
