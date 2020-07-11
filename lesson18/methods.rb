require 'net/http'

def random_regexp_string
	patterns = ['торф', 'мотор', 'крыша', 'труба', 'крик']

	pattern = patterns.sample

	letter = pattern.split('').sample

	return pattern.gsub(letter, '.')
end

def word_exists?(word)
	# Формируем адрес страницы для проверки и записываем в переменную url.
  url = "https://ru.wiktionary.org/wiki/#{word}"

  # Достаем содержимое страницы по указанному адресу и записываем в переменную
  # wiktionary_page. Обратите внимание, что мы меняем кодировку на utf-8, чтобы
  # мы могли корректно работать с русскими буквами.
  wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding('UTF-8')

  # С помощью регулярного выражения проверяем, есть ли на странице текст о том,
  # что такого слова нет.
  if wiktionary_page =~ /текст на данной странице отсутствует/
    # Если статьи про слово нет, значит надо вернуть false, такого слова нет
    return false
  else
    # Если такой текст на странице не найдет, значит статья есть и слово можно
    # засчитывать. Возвращаем true.
    return true
  end
end