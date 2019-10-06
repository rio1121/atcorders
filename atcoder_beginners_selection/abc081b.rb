# 数値配列の要素に奇数が含まれているか
def contains_odd?(array)
  array.each do |element|
    return true if (element % 2).nonzero?
  end

  false
end

# 問題上用意しているが、Rubyでは必要ない。
n = gets.to_i
# スペースで区切られた数値を配列aに格納
a = gets.chomp.split(" ").map(&:to_i)

# 生存回数をカウント
count = 0

loop do
  # 奇数が含まれる場合試行終了
  break if contains_odd?(a)

  # 配列内の各要素を2で割る
  a.map! do |element|
    element / 2
  end

  count += 1
end

puts count.to_s
