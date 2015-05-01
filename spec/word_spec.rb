require ('rspec')
require ('word')
require ('definition')

describe(Word) do
  before() do
    Word.clear()
  end

describe("#word") do
  it("adds a new word to the dictionary") do
    test_word = Word.new("apple")
    test_word.save()
    expect(test_word.word()).to(eq("apple"))
  end
end

describe(".all") do
  it("initially has no words on file") do
    expect(Word.all()).to(eq([]))
  end
end



describe("#save") do
  it("adds a word to the array of words") do
    test_word = Word.new("apple")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

describe(".clear") do
  it("empties out all saved words") do
    Word.new("apple").save()
    Word.clear()
    expect(Word.all()).to(eq([]))
  end
end

end
