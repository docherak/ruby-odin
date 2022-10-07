def cipher(text, shift)
  output=''
  text.each_char do |char|
    letter_case= char.ord <= 90 ? 65 : 97
    if char.ord.between?(65, 90)
      if char.ord+shift>90
        rot=(letter_case-1)+(char.ord+shift-90)
        output+=rot.chr
      elsif char.ord+shift<65
        rot=(90+1)-(letter_case-(char.ord+shift))
        output+=rot.chr
      else
        rot=char.ord+shift
        output+=rot.chr
      end
    elsif char.ord.between?(97, 122)
      if char.ord+shift>122
        rot=(letter_case-1)+(char.ord+shift-122)
        output+=rot.chr
      elsif char.ord+shift<97
        rot=(122+1)-(letter_case-(char.ord+shift))
        output+=rot.chr
      else
        rot=char.ord+shift
        output+=rot.chr
      end
    else
      output+=char
    end
  end
  puts output
end

new_string=gets.chomp
shift=gets.chomp.to_i
cipher(new_string, shift)
