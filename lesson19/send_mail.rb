require 'pony'
require "io/console"

my_mail = "anton.lipich1@gmail.com"

puts "Введите пароль от вашей почты #{my_mail} для отправки письма:"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

puts "Введите тему письма"
theme = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp

begin
	Pony.mail({
		:subject => theme,
		:body => body,
		:to => send_to,
		:from => my_mail,

		:via => :smtp,
		:via_options => {
					:address => 'smtp.gmail.com',
					:port => '587',
					:enable_starttls_auto => true,
					:user_name => my_mail,
					:password => password,
					:authentication => :plain }
	})

	puts "Письмо успешно отправлено!"
rescue SocketError
	puts "Не могу соединиться с сервером"
rescue Net::SMTPFatalError => error
	puts "Вы некорректно задали параметры письма " + error.message
rescue Net::SMTPAuthenticationError => error
	puts "Вы неправильно указали пароль: " + error.message
end

