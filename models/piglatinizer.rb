class PigLatinizer

  def piglatinize(string)
    string.split(" ").each do |word|
      m = word.match(/^[^aeiou]+/i)
      if m
        word.delete_prefix!(m[0])
        word << m[0]
        word << "ay"
      else
        word << "way"
      end
    end.join(" ")
  end
end
