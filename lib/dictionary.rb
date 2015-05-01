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

  define_method(:definition)
    @definition
  end

  define_method(:save)
    @@word_def.push(self)
  end

  define_singleton_method(:all)
    @@word_def
  end

  define_singleton_method(:clear)
    @@word_def = []
  end

end
