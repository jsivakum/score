class String
  define_method(:score) do
    word_arr = self.split("")
    score = 0
    score_pry = 0
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
      score_pry = score
      value_of_letters.each() do |chars, value|
        if (chars.include?(letter.upcase()))
          score = score.+(value)
          break
        end
  #      binding.pry
      end
      if(score_pry == score)
        errors = errors.+(1)
      end
    end
    answers.push(score)
    answers.push(errors)
    output_string = "You got ".+(answers.at(0).to_s).+(" points.").+(" You had ").+(answers.at(1).to_s).+(" invalid character(s)!")
    output_string
  end
end
