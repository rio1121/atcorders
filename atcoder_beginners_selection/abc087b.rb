a = gets.to_i # 500円玉所持数
b = gets.to_i # 100円玉所持数
c = gets.to_i # 50円玉所持数

x = gets.to_i # 合計金額

number_of_combinations = 0 # 組合せの数

(0..a).each do |number_of_a|
  # 500円玉の数がnumber_of_aである組合せは存在しない
  break if number_of_a * 500 > x

  (0..b).each do |number_of_b|
    # 500円玉の数がnumber_of_aで、100円玉の数がnumber_of_bである組合せは存在しない
    break if (number_of_a * 500 + number_of_b * 100) > x

    # 合計金額の残りを50円玉で補える場合、有効な組み合わせとしてカウントする。
    number_of_combinations += 1 if (x - (number_of_a * 500 + number_of_b * 100)) <= c * 50
  end
end

puts number_of_combinations
