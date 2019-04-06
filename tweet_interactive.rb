require "twitter"

begin

  @ユーザーID = Twitter::REST::Client.new do |config|
    config.consumer_key        =  CONSUMER_KEY
    config.consumer_secret     =  CONSUMER_SECRET
    config.access_token        =  ACCESS_TOKEN
    config.access_token_secret =  ACCESS_TOKEN_SECRET
  end

  puts "Ctrl-C or Ctrl-D で終了"
  puts

  loop do
    print "投稿したい文字列 (Enterで投稿) > "; str = gets
    res = @ユーザーID.update(str)
    puts "投稿: #{res.text}"
    puts
  end

rescue => e

  p e.class
  p e.message

end

