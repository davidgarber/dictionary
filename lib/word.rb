class Word

  define_method(:initialize) do |entry|
    @entry = entry
  end

  define_method(:entry) do
    @entry
  end
end
