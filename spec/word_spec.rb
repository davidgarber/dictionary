require('rspec')
require('word')

  describe("#entry") do
    it("returns the entry of the word") do
      test_word = Word.new("definition")
      expect(test_word.entry()).to(eq("definition"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
