# frozen_string_literal: true

require 'ostruct'

# Collection of fun inspirational learning quotes
class Quote
  def self.random_quote
    OpenStruct.new(QUOTES.sample)
  end

  QUOTES = [
    {
      text: 'Never stop learning, because life never stops teaching.',
      author: 'Lin Pernille'
    },
    {
      text: 'The capacity to learn is a gift; the ability to learn is a skill; the willingness to learn is a choice.',
      author: 'Brian Herbert'
    },
    {
      text: 'Learn continually - there\'s always "one more thing" to learn!',
      author: 'Steve Jobs'
    },
    {
      quote: 'Learning never exhaust the mind.',
      author: 'Leonardo da Vinci'
    },
    {
      text: 'Tell me and I forget. Teach me and I may remember. Involve and I learn.',
      author: 'Benjamin Franklin'
    },
    {
      text: 'Being a student is easy. Learning requires actual work.',
      author: 'William Crawford'
    },
    {
      text: 'Wisdom is not a product of schooling, but of the lifelong attempt to acquire it.',
      author: 'Albert Einstein'
    },
    {
      text: 'Try to learn something about everything and everything about something.',
      author: 'Thomas H. Huxley'
    },
    {
      text: 'Live as if you were to die tomorrow. Learn as if you were to live forever.',
      author: 'Mahatma Gandhi'
    }
  ].freeze
end
