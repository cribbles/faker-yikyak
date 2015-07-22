require 'marky_markov'

if RUBY_VERSION =~ /2.1.2/ # assuming you're running Ruby ~1.9
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

class YikYakov
  def self.generate(word_count = 20)
    markov = MarkyMarkov::TemporaryDictionary.new
    file_pattern = File.expand_path("../yaks.txt" , __FILE__)
    markov.parse_file(file_pattern)

    markov.generate_n_words(word_count)
  end
end
