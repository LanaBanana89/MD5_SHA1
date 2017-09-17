if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require 'digest'

puts "Введите слово или фразу для шифрования"

  word = STDIN.gets.encode("UTF-8").chomp

puts "Каким способом зашифровать: \n1.MD5\n2.SHA1"

  num = STDIN.gets.to_i

  while num != 1 && num != 2
    puts "Выберите 1 или 2"
    num = STDIN.gets.chomp.to_i
  end

  if (num == 1)

    cipher = Digest::MD5.hexdigest(word)

  elsif (num == 2)

    cipher = Digest::SHA1.hexdigest(word)

  end
    puts "Вот что получилось: " + cipher
