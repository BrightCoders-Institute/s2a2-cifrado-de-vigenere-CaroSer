
class VigenereCipher
  def initialize
    @vigenere_table=generate_table
  end

  def encode(message,key)
    if message.length>key.length 
      key=key*2 until key.length>=message.length
    end
    parsed_message= message.upcase.split('').map {|letter| @vigenere_table[0].fetch(letter)}
    parsed_key=key.upcase.split('').map {|letter| @vigenere_table[0].fetch(letter)}
    paired=parsed_message.zip(parsed_key).map {|pair|( pair[0]+pair[1])%26}
    paired.map {|number| @vigenere_table[0].invert.fetch(number)}.join
  end

  def decode(message,key)

  end
  
  private
  def generate_table
    x=65
    table=[]
    26.times do |i|
    alpha=[(x.chr..'Z').to_a.concat((65.chr..(x-1).chr).to_a),(0..25).to_a].transpose
    table<<alpha.to_h
    x+=1
    end 
    table
  end  
end


cipher=VigenereCipher.new
puts cipher.encode("CODEWARS","PASSWORD")
