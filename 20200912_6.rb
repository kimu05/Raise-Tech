=begin
参考URL
 クラスについて          https://www.sejuku.net/blog/15328
 標準入力を扱う方法       https://www.sejuku.net/blog/14078
 コメントアウトの仕方      https://qiita.com/Mocacamo/items/318b193ded19fd37ffd6
=end

class Communication
  def greet
    puts "挨拶しましょう。"
    #標準出力から受け取った値を、変数「input」に代入
    input = gets
    if input.match(/[Hh]ello*/)
      puts "Hello"
    else
      puts "Hey!"
    end
  end
end

#WorkplaceCommunication = Communication.new()
commu = Communication.new
commu.greet
