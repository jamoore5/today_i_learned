# frozen_string_literal: true

require 'minitest/autorun'
require 'mocha/minitest'
require 'shoulda-context'
require 'shoulda-matchers'

require_relative '../lib/today_i_learned/notifier'

class NotifierTest < Minitest::Test
  context 'send_notification' do
    subject { Notifier.new(TextClient.new) }

    should 'respond to text' do
      Quote.stubs(:random_quote).returns(mock('random quote', text: 'quote', author: 'author'))
      actual = subject.send_notification
      assert_equal "quote ~ author\nWhat did you learn today?", actual
    end
  end

  class TextClient
    def send(message)
      message
    end
  end
end
