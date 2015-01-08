class String
  define_method(:score) do
    word_arr = self.split("")
    score = 0
    errors = 0
    answers=Array.new()
    output_string = ""
    value_of_letters = { "AEIOULNRST" => 1,
      "DG" => 2,
      "BCMP" => 3,
      "FHVWY" => 4,
      "K"=>5,
      "JX"=>8,
      "QZ"=>10 }

    word_arr.each() do |letter|
      value_of_letters.each() do |chars, value|
        if (chars.include?(letter.upcase()))
          score = score.+(value)
          break
        else
          errors = errors.+(1)
        end
        #binding.pry
      end
    end
    answers.push(score)
    output_string = answers.at(0).to_s.+(answers.at(1).to_s)
    output_string
  end
end
