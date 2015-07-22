require 'faker'
require_relative 'yikyakov'

module Faker
  class YikYak < Base
    class << self
      def words(word_count = 20)
        yikyakov = YikYakov.generate(word_count)

        sanitize(yikyakov)
      end

      private
      
      def sanitize(words)
        words.gsub(/ ([\;\.\!\?])/, $0)
      end
    end
  end
end
