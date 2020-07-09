eyes_file = File.new('./data/eyes.txt', 'r')
forehead_file = File.new('./data/forehead.txt', 'r')
mouth_file = File.new('./data/mouth.txt', 'r')
nose_file = File.new('./data/nose.txt', 'r')
eyes = eyes_file.readlines
forehead = forehead_file.readlines
mouth = mouth_file.readlines
nose = nose_file.readlines


puts "Вот ваше случайное лицо"
puts forehead.sample, eyes.sample, nose.sample, mouth.sample