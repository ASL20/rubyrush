#Записываем имя пользователя в массив
name = ARGV[0]
# Если пользовательне ввел имя, обращаемся к нему по умолчанию
if name == nil
	name = "Таинственная персона"
end
# Выводим приветствие
puts "Добрый день, #{name}! Ответьте на вопросы."
# Задаем массив с вопросами
questions = [
	"Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ему скандал прямо на улице?",
	"Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?",
	"Вы расспрашиваете его о работе, о коллегах?",
	"Вы считаете, что каждую свободную минуту должны проводить вместе?",
	"Он для вас — свет в окошке?",
	"Случается ли вам проверять его корреспонденцию и рыться в его вещах?",
	"Чем чаще он говорит о своих чувствах, тем меньше вы верите?",
	"Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?",
	"Вы всегда спрашиваете у него, куда он ходит и с кем встречается?",
	"Если вы на него обижены, то молчите по нескольку дней?",
	"Вас мучают мысли о его бывшей возлюбленной?",
	"Он утверждает, что не ревнует вас, потому что доверяет. Для вас это означает, что любовь прошла?"
]

results = [
	#10 и более ответов «да». 
	"Вы болезненно ревнивы. Не думайте, что если избранник вас любит, " +
	"то он автоматически становится вашей собственностью. Вы считаете " +
	"себя непривлекательной и боитесь, что он бросит вас ради какой " +
	"нибудь красавицы. Вы ни в чем не уверены, особенно в нем. " +
	"Задумайтесь над этим, потому что нельзя быть настолько ревнивой " +
	"и агрессивной, это может привести к конфликтам и даже к разрыву " +
	"отношений.",

	#5–9 ответов «да». 
	"Ваша ревность действует на вас мобилизующе, но не она одна " +
	"управляет вашим поведением. В минуту слабости случается и вам " +
	"устраивать скандалы. Но, успокоившись, вы понимаете, что для " +
	"вашей ревности не было никаких оснований.",

	#Менее 5 ответов «да». 
	"Вам совершенно незнакомо чувство ревности. Но тревога и " +
	"беспокойство могут накапливаться со временем. Вы должны решать " +
	"волнующие вас проблемы со своим партнером."
]
#счетчик ответов - да
yes_answers = 0
# цикл, перебирающий все вопросы
for item in questions do
	puts item #выводим вопрос

	user_input = nil # задаем пустую переменную ответа пользователя
	# цикл, проверяющий ответы пользователя на yes или no
	while (user_input != "yes" and user_input != "no")
		puts "Введите yes или no и нажмите Enter"
		user_input = STDIN.gets.chomp.downcase
	end
	#Если пользователь вводит yes, увеличиваем соответствующий счетчик
	if (user_input == "yes")
		yes_answers +=1
	end
end

puts "\n #{name}"

puts "\nВаш результат теста (ответов - да #{yes_answers}):"
# В зависимости от кол-ва ответов yes, выводим соответствующий 
# элемент массива с ответом
if (yes_answers >= 10)
	puts results[0]
elsif (yes_answers >= 5)
	puts results[1]
else
	puts results[2]
end
