require_relative "translator"

describe Translator do

  it "should add 'ay' to the end of a word beginning with a vowel" do
    test_words = ["apple", "echo", "itching", "octopus", "union"]
    expect(test_words.map{|word| Translator.translate(word)}).to eq ["appleay", "echoay", "itchingay", "octopusay", "unionay"]
  end

  it "moves the consonant a word starts with to the end of the word and add 'ay' after it" do
    test_words = ["mad", "flabbergasted", "yves"]
    expect(test_words.map{|word| Translator.translate(word)}).to eq ["admay", "labbergastedfay", "vesyay"]
  end

end