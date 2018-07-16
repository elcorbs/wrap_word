require "wrap_word/version"

module WrapWord
  DEFAULT_LENGTH = 20
  def WrapWord::wrap(line_length = DEFAULT_LENGTH, string)
    return string if string.length <= line_length
    if string[0,line_length+1].index(' ')
      break_point = string[0,line_length + 1].rindex(' ')
    else
      break_point = line_length
    end

    "#{string[0,break_point]}\n#{wrap(line_length, string[break_point..-1].strip)}"
  
  end
end
