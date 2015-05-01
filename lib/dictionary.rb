class Word
  attr_reader :word, :definition
  @@word_def = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
  end

  define_method(:word) do
    @word
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

end
