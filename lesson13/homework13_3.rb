questions_path = "./data/questions.txt"
answers_path = "./data/answers.txt"

q = File.new(questions_path)
a = File.new(answers_path)

questions = q.readlines
answers = a.readlines

q.close
a.close

count = 0
right_answers = 0

puts "Мини-викторина. Ответьте на вопросы."

while count < questions.size do
	puts questions[count].chomp
	answer = gets.chomp
	if answer == answers[count].chomp
		puts "Верный ответ!"
		right_answers += 1
	else 
		puts "Неправильно! Правильный ответ: #{answers[count]}"
	end
	count +=1
end

puts "У вас #{right_answers} правильных ответа из #{questions.size}"