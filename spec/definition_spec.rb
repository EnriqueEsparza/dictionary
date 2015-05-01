require ('rspec')
require ('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end


  describe("#definition") do
    it("adds a definition to a word in the dictionary") do
      test_def = Definition.new("A red fruit, often given to teachers")
      test_def.save()
      expect(test_def.definition()).to(eq("A red fruit, often given to teachers"))
    end
  end

  describe(".all") do
    it("initially has no definitions saved") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saved definition to corresponding word") do
      test_def = Definition.new("A red fruit, often given to teachers")
      test_def.save()
      expect(Definition.all()).to(eq([test_def]))
    end
  end

  describe(".clear") do
    it("empties all saved definitions") do
      expect(Definition.all()).to(eq([]))
    end
  end


end
