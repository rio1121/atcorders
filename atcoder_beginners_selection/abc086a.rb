# スペースで区切られた標準入力文字列を数値a, bに格納
a, b = gets.chomp.split(" ").map(&:to_i)
if ((a * b) % 2).zero?
  puts "Even"
else
  puts "Odd"
end
