require('pry')
class Word
  attr_reader :word, :definition
  @@word_def = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @id = @@word_def.length() + 1
  end

  define_method(:word_plus_def) do
    @word + ":" + " " + @definition
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_method(:definition) do
    @definition
  end

  define_method(:save) do
    @@word_def.push(self)
  end

  define_singleton_method(:all) do
    @@word_def
  end

  define_singleton_method(:clear) do
    @@word_def = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@word_def.each() do |word|
      if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
    found_word
  end

end
