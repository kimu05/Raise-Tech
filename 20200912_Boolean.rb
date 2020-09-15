puts "1か0を入力してエンターを押してください。"
i = gets.to_i

def Boolean(i)
  if i == 1 then
    puts "値は真"
  elsif i == 0
    puts "値は偽"
  else
    puts "1か0を入力してください！"
  end
end

Boolean(i)
