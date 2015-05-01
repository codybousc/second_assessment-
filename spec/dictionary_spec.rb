require('rspec')
require('dictionary')

describe(Dictionary) do
  before() do
    Dictionary.clear()
  end

  describe('#name') do
    it("returns the name of the dictionary") do
      test_dealership = Dictionary.new("Spanish Dictionary")
      expect(test_dealership.name()).to(eq("Spanish Dictionary"))
    end
  end

  describe('#word_def') do
    it("initially returns an empty array of words/definitions for the dictionary") do
      test_def = Dictionary.new({:word => "struggling", :definition => "strive to achieve"})
      expect(test_def.word_def()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a dictionary to the array of dictionaries") do
      test_dictionary = Dictionary.new("Spanish Dictionary")
      test_dictionary.save()
      expect(Dictionary.all()).to(eq([test_dictionary]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Dictionary.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved dictionaries") do
      Dictionary.new("Polish Diciontary").save()
      Dictionary.clear()
      expect(Dictionary.all()).to(eq([]))
    end
  end

  describe('#add_word_def') do
    it("adds a new word/definition to the dictionary") do
      test_dictionary = Dictionary.new("Spanish Dictionary")
      test_def = Word.new({:word => "autobus", :definition => "modo de transportacion"})
      test_dictionary.add_word_def(test_def)
      expect(test_dictionary.word_def()).to(eq([test_def]))
    end
  end
end
