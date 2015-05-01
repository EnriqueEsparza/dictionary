require ('rspec')
require ('word')

describe(Word) do

end

describe("#new_word") do
  it("adds a new word to the dictionary") do
    test_word = Word.new("apple")
    test_word.save()
    expect(test_word.new_word()).to(eq("apple"))
  end
end
