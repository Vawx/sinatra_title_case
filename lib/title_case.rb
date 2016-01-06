class String
  define_method(:title_case) do
    non_cap_words = ["the", "and", "of", "or", "from", "but", "to", "on"]
    split_sentence = self.downcase().split()
    split_sentence.each() do |word|
      if !non_cap_words.include?(word) || split_sentence.index(word) == 0
        word.capitalize!()
      end
    end
    split_sentence.join(" ")
  end
end
