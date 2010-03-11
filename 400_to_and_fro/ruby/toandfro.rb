# encoding: UTF-8
module ToAndFro
  def self.decipher(col, str)
    rows = []
    (str.length / col).times do |i|
      offset = i*col
      rows << (i.odd? ? str[offset,col].reverse : str[offset,col])
    end
    result = ''
    col.times { |i| result += rows.map {|r| r[i..i]}.join }
    result
  end
end
while((input = gets.to_i) != 0)
  puts ToAndFro.decipher(input, gets)
end