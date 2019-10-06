mass = gets

# ごくごく少量のパターンしかないのでfor文回す必要はないと思う。
puts "3" if mass.chomp == "111"
puts "0" if mass.chomp == "000"
puts "2" if %w[101 110 011].include?(mass.chomp)
puts "1" if %w[100 010 001].include?(mass.chomp)
