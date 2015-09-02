class Translator

  def self.translate word
    vowels = ["a", "e", "i", "o", "u"]
    word.downcase!
    if vowels.include? word[0]
      word << "ay"
    else
      (word << word[0] << "ay")[0] = ""
    end
    word
  end

end