current_path = File.dirname(__FILE__)

file_name = "hello"

file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")

file.print("Hello, file!")
file.close