class Word
  @@word = []

  define_method(:initialize) do |entry|
    @entry = entry
  end

  define_method(:entry) do
    @entry
  end

  define_singleton_method(:all) do
    @@word
  end

  define_method(:save) do
    @@word.push(self)
  end
end
