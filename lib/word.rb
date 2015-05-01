class Word
  @@word = []

  define_method(:initialize) do |entry|
    @entry = entry
    @id = @@word.length().+(1)
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

  define_singleton_method(:clear) do
    @@word = []
  end

  define_method(:id) do
    @id
  end
end
