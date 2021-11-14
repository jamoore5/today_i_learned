# frozen_string_literal: true

require 'minitest/autorun'
require 'shoulda-context'
require 'shoulda-matchers'
require_relative '../lib/today_i_learned/quote'

class QuoteTest < Minitest::Test
  context 'random_quote' do
    subject { Quote.random_quote }

    should 'respond to text' do
      assert subject.respond_to?(:text)
    end

    should 'respond to author' do
      assert subject.respond_to?(:author)
    end
  end
end
