puts "Сегодня вы решили сходить на концерт любимой группы в \
легендарную Подземку. Уже перед входом в клуб Вы понимаете, что \
забыли кошелек, что же делать?"

puts "1. Попытаться обмануть охранника"
puts "2. Поискать в толпе на входе знакомые лица"
puts "3. Пойти домой"

choice = gets.to_i
while choice < 1 or choice > 3 do
    puts "Введите цифру от 1 до 3"
    choice = gets.to_i
end

if choice == 1
    puts "Так как охранник явно не блещет интеллектом, \
Вы пробуете пойти на хитрость и говорите ему, что у \
входа в клуб драка. Охранник вскакивает со своего места \
и выбегает на улицу. Воспользовавшись этим, Вы с легкостью \
проникаете в клуб.\n\n"
variant = 1

else

  if choice == 2
    puts "Вы всматриваетесь в лица людей, словно Старший брат и
  понимаете, что удача на этот раз не подвела! Вы видите своего 
  друга."
    puts "Вы приветствуете друга и просите дать взаймы денег
  на билет, т.к. забыли кошелек. Хорошо, что это тот самый друг,
  к которому Вы всегда можете обратиться за помощью. Он проникается
  Вашей ситуацией и в очередной раз выручает. На этот раз удача
  на Вашей стороне и Вы проходите в клуб."
  variant = 2
  else

    if choice == 3
            puts "Вы смирились со своей судьбой и пошли домой, смотреть
      концерт группы на ютубе, чтобы хоть как-то компенсировать
      свой провал."
            exit
    end
  end
end

puts "Вы спускаетесь в зал и видите много знакомых лиц: 
- парень, который присутствует на всех концертах одновременно;
- знакомый, группа которого меняет названия чаще, чем носки;
- гитарист, пожалуй лучше группы на юге России;"

puts "1. Подойти на бар"
puts "2. Подойти к знакомому"
puts "3. Подойти к гитаристу"

choice = gets.to_i
while choice < 1 or choice > 3 do
    puts "Введите цифру от 1 до 3"
    choice = gets.to_i
end

if choice == 2
    puts "Вы подходите к знакомому. При виде Вас его лицо 
    озаряет улыбка, он крепко жмет протянутую руку и 
    спрашивает: \"Е-е-е друг, как дела?\""
else
  if choice == 3
    puts "Вы подходите к гитаристу и слышите уже набившую оскомину 
    фразу: Привет, у нас скоро концерт, нужен басист, естественно 
    не забесплатно, как смотришь на такое предложение?"
  else
    if variant == 1
      puts "Вы идете на бар и ждете свою очередь, когда в 
       зале раздаются крики. Судя по интонации и обрывкам фраз - это 
       охранник и он в ярости. Вы судорожно пытаетесь придумать, как 
       избежать вылета из клуба"
    else
      puts "Вы заказываете пиво и наслаждаясь напитком смотрите на зрителей"
    end
  end
end

#   if choice == 1
#     puts "Вы идете на бар и ждете свою очередь, когда в 
#     зале раздаются крики. Судя по интонации и обрывкам фраз - это 
#     охранник и он в ярости. Вы судорожно пытаетесь придумать, как 
#     избежать вылета из клуба"
#   elsif choice == 2
#     puts "Вы подходите к знакомому. При виде Вас его лицо 
#     озаряет улыбка, он крепко жмет протянутую руку и 
#     спрашивает: \"Е-е-е друг, как дела?\""
#   elsif choice == 3
#     puts "Вы подходите к гитаристу и слышите уже набившую оскомину 
#     фразу: Привет, у нас скоро концерт, нужен басист, естественно 
#     не забесплатно, как смотришь на такое предложение?"
#   end
# end

