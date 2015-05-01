class Dictionary
  @@dictionaries = []

  define_method(:initialize) do |name|
    @name = name
    @word_def = []
  end

  define_method(:name) do
    @name
  end

  define_method(:word_def) do
    @word_def
  end

  define_singleton_method(:all) do
    @@dictionaries
  end

  define_method(:save) do
    @@dictionaries.push(self)
  end

  define_singleton_method(:clear) do
    @@dictionaries = []
  end

  define_method(:add_word_def) do |word|
    @word_def.push(word)
  end

end
