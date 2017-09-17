#программа, шифрующая слова и фразы с помощью MD5 и SHA-1

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

puts "Каким способом зашифровать: \n1.MD5\n2.SHA1\n3.SHA2"

  num = STDIN.gets.to_i

<<<<<<< HEAD
  until([1,2,3].include?(num)) do
    puts "\nКаким способом зашифровать:\n1. MD5\n2. SHA1\n3. SHA2"
=======
  while num != 1 && num != 2 && num != 3
    puts "Выберите 1, 2 или 3"
>>>>>>> master
    num = STDIN.gets.chomp.to_i
  end

  case num
    when 1
    cipher = Digest::MD5.hexdigest(word)

    when 2
    cipher = Digest::SHA1.hexdigest(word)

    when 3
    cipher = Digest::SHA2.hexdigest(word)

  end
    puts "Вот что получилось: " + cipher

