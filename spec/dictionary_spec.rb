require('rspec')
require('dictionary')

describe(Word) do
  before() do
    Word.clear()
  end

  describe("#save") do
    it("pushes the word and definition to the word_def array") do
      test_def = Word.new({:word => "struggling", :definition => "strive to achieve"})
        expect(test_def.save()).to(eq([test_def]))
      end
    end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("emties out words and definitions") do
      test_def = Word.new({:word => "struggling", :definition => "strive to achieve"}).save
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of each word/def pair") do
      test_def = Word.new({:word => "struggling", :definition => "strive to achieve"})
      test_def.save()
      expect(test_def.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a word/def by its id number") do
      test_def = Word.new({:word => "struggling", :definition => "strive to achieve"})
      test_def.save
      test_def2 = Word.new({:word => "confusion", :definition => "lack of understanding"})
      test_def2.save
      expect(Word.find(test_def.id())).to(eq(test_def))
    end
  end
end
