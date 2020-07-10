eyes_file = File.new('./data/eyes.txt', 'r')
forehead_file = File.new('./data/forehead.txt', 'r')
mouth_file = File.new('./data/mouth.txt', 'r')
nose_file = File.new('./data/nose.txt', 'r')

eyes = eyes_file.readlines
forehead = forehead_file.readlines
mouth = mouth_file.readlines
nose = nose_file.readlines

eyes_file.close
forehead_file.close
mouth_file.close
nose_file.close

file_name = Time.now.strftime("face_%Y-%m-%d_%H:%M:%S")

file = File.new("./data/#{file_name}.txt", "a")

file.puts(forehead.sample, eyes.sample, nose.sample, mouth.sample)

file.close