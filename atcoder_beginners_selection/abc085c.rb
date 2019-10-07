n, y = gets.chomp.split(" ")

number = n.to_i
amount = y.to_i

# 求める条件を満たす札の組み合わせを調べる、発見次第throwされ、変数に格納される。
yukichi, ichiyo, hideyo = catch(:end_searching) do
  (0..number).each do |y_number|
    throw(:end_searching, [y_number, 0, 0]) if y_number * 10_000 == amount && y_number == number

    (0..number).each do |i_number|
      break if y_number + i_number > number

      throw(:end_searching, [y_number, i_number, 0]) if y_number * 10_000 + i_number * 5_000 == amount && y_number + i_number == number

      remaining_number = number - y_number - i_number
      remaining_amount = amount - y_number * 10_000 - i_number * 5_000
      # 残額が負数になった場合、1万円札がy_number枚である施行を終了する。
      break if remaining_amount.negative?

      if remaining_number * 1_000 >= remaining_amount
        h_number = remaining_amount / 1_000
        throw(:end_searching, [y_number, i_number, h_number]) if y_number + i_number + h_number == number
      end
    end
  end

  # 発見に失敗
  throw(:end_searching, [-1, -1, -1])
end

puts "#{yukichi} #{ichiyo} #{hideyo}"
