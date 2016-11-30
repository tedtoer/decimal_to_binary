print 'Input decimal number: '
dec_num = gets.chomp[0..-2].to_i

x = dec_num
degree = 0
result = ''

if dec_num == 1
  puts '1'
  exit
end

while x > 1 do
  degree += 1
  x = x/2
end

residue = dec_num
degree.downto(0).each do |n|
  divider = 2**n
  result += residue >= divider ? '1' : '0'
  residue %= divider
end

puts "Binary number format is: \033[32m#{result}\033[0m"
