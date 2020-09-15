=begin
参考URL
 クラスについて          https://www.sejuku.net/blog/15328
 標準入力を扱う方法       https://www.sejuku.net/blog/14078
 正規表現について         https://qiita.com/shizuma/items/4279104026964f1efca6
 コメントアウトの仕方      https://qiita.com/Mocacamo/items/318b193ded19fd37ffd6
 例外処理                 https://26gram.com/ruby-exception
=end

#クラスの練習
class Communication
  def greet
    puts "挨拶をしましょう。"
    #標準出力から受け取った値を、変数「input」に代入
    input = gets.chomp
    if input.match(/[Hh]ello*/)
      puts "Hello!"
    else
      puts "Hi!"
    end
  end

  def greet2
    puts "向こうから歩いてくる人はあなたの"
    puts "1:上司 2:同僚 3:友人"
    input = gets.chomp
    if input.match(/1|^上司/)
      puts "お疲れ様でしたー"
    elsif input.match(/2|^同僚/)
      puts "おつかれー"
    elsif input.match(/3|^友人/)
      puts "おつー"
    else
      raise StandardError, "入力値を確認してください"
    end
  end
end


#継承の練習
class WorkplaceCommunication < Communication
  def initialize
    @count = 1
  end

  def judge
    puts "ここは職場ですか？ 「はい」か「いいえ」で答えてください。"
    input = gets.chomp

    if input == "はい"
      #親クラスの別メソッドを呼び出すために以下の構文を使用
      #参考：https://qiita.com/github0013@github/items/f1aff2bc9b0552017bda
      Communication.instance_method(:greet2).bind(self).call
    elsif input == "いいえ"
      puts "・・・。"
    else
      puts "「はい」か「いいえ」で答えてください。(失敗回数#{@count}/3)"
      @count += 1
        if @count == 4
          puts "(( _ _ ))..zzzZZ"
        else
          judge
      end
    end
  end
end

commu = Communication.new
commu.greet
work = WorkplaceCommunication.new
work.judge
