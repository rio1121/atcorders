s = gets.chomp

judge = "NO"

loop do
  # 末尾がこれらの文字以外なら即座に終了
  break unless %w[r m e].include?(s[-1])

  case s[-1]
  # dreamer eraser
  when "r" then
    # 1文字もしくは2文字削除して次に回す
    if s[-7, 7] == "dreamer"
      s.slice!(-2, 2)
    elsif s[-6, 6] == "eraser"
      s.chop!
    else
      break
    end
  # dream
  when "m" then
    break unless s[-5, 5] == "dream"

    s.slice!(-5, 5)
  # erase
  when "e" then
    break unless s[-5, 5] == "erase"

    s.slice!(-5, 5)
  end

  # 文字列の長さが0であれば成功として終了。
  if s.size.zero?
    judge = "YES"
    break
  end
end

puts judge
