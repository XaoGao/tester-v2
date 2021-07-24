require 'faker'

# User.all.each do |user|
#   phone = 
#   user.update(phone: phone)
# end

# 20.times do |n|
#   User.create(
#     email: "t#{n}@t.t",
#     password: 'password',
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     lock: false,
#     middle_name: Faker::Name.first_name ,
#     role: User.roles[:doctor]
#   )
# end
# 30.times do |n|
#   Phone.create(number: Faker::PhoneNumber.cell_phone, lock: false)
# end
# 5.times do |n|
#   Department.create(
#     lock: false,
#     level: n + 1,
#     name: Faker::Job.field
#   )
# end

# 5.times do |n|
#   Position.create(
#     lock: false,
#     level: n + 1,
#     name: Faker::Job.position
#   )
# end

# 15.times do |n|
#   Patient.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     lock: false,
#     middle_name: Faker::Name.first_name,
#     document_number: Faker::Barcode.ean_with_composite_symbology,
#     current_doctor: User.where(role: User.roles[:doctor]).sample
#   )
# end
# Test.create(
#   name: 'Шкала депрессии Бека',
#   description: 'Шкала депрессии Бека разработана на ос­нове клинических наблюдений, позволив­ших выявить ограниченный набор наиболее реле­вантных и значимых симптомов депрессии. После соотнесения этого списка параметров с клиниче­скими описаниями депрессии, содержащимися в соотвествующей литературе, был разработан опросник, включающий в себя 21 категорию симпто­мов и жалоб. Каждая категория состоит из 4-5 ут­верждений, соответствующих специфическим про­явлениям/симптомам депрессии. Эти утверждения ранжированы по мере увеличения удельного вклада симптома в общую степень тяжести депрессии. В соответствии со степенью выраженности симпто­ма, каждому пункту присвоены значения от 0 (сим­птом отсутствует, или выражен минимально) до 3 (максимальная выраженность симптома). Некото­рые категории включают в себя альтернативные утверждения, обладающие эквивалентным удельным весом.        В первоначальном вариан­те методика заполнялась при участии квалифици­рованного эксперта (психиатра, клинического пси­холога или социолога), который зачитывал вслух ка­ждый пункт из категории, а после просил пациента выбрать утверждение, наиболее соответствующее его состоянию на текущий момент. Пациенту выда­валась копия опросника, по которому он мог сле­дить за читаемыми экспертом пунктами. На осно­вании ответа пациента исследователь отмечал со­ответствующий пункт на бланке. В дополнение к результатам тестирования исследователь учитывал анамнестические данные, показатели интеллекту­ального развития и прочие интересующие параме­тры.        В настоящее время считается, что процедура тести­рования может быть упрощена: опросник выдается на руки пациенту и заполняется им самостоятельно.        Показатель по каждой категории рассчитывается следующим образом: каждый пункт шкалы оцени­вается от 0 до 3 в соответствии с нарастанием тя­жести симптома. Суммарный балл составляет от О до 62 и снижается в соответствии с улучшением состояния.',
#   instruction: 'В этом опроснике содержатся группы утверждений. Внимательно прочитайте каждую группу утверждений. Затем определите в каждой группе одно утверждение, которое лучше всего соответствует тому, как Вы себя чувствовали НА ЭТОЙ НЕДЕЛЕ И СЕГОДНЯ. Поставьте галочку около выбранного утверждения. Если несколько утверждений из одной группы кажутся Вам одинаково хорошо подходящими, то поставьте галочки около каждого из них. Прежде, чем сделать свой выбор, убедитесь, что Вы прочли Все утверждения в каждой группе.'
# )

# Test.create(
#   name: 'Тест Спилбергера',
#   description: 'Тест Спилбергера состоит из 20 высказываний, относящихся к тревожности как состоянию (состояние тревожности, реактивная или ситуативная тревожность) и из 20 высказываний на определение тревожности как диспозиции, личностной особенности (свойство тревожности).',
#   instruction: 'В этом опроснике содержатся группы утверждений. Внимательно прочитайте каждую группу утверждений. Затем определите в каждой группе одно утверждение, которое лучше всего соответствует тому, как Вы себя чувствовали НА ЭТОЙ НЕДЕЛЕ И СЕГОДНЯ. Поставьте галочку около выбранного утверждения. Если несколько утверждений из одной группы кажутся Вам одинаково хорошо подходящими, то поставьте галочки около каждого из них. Прежде, чем сделать свой выбор, убедитесь, что Вы прочли Все утверждения в каждой группеОбследуемому предлагается — «Прочитайте внимательно каждое из приведенных предложений и зачеркните соответствующую цифру справа. Над вопросами долго не задумывайтесь. Обычно первый ответ, который приходит в голову, является наиболее правильным, адекватным Вашему состоянию». '
# )
# [
#   {
#       text: "Растроен",
#       level: 1,
#       test_id: 1
#   },
#   {
#       text: "Тревога",
#       level: 2,
#       test_id: 1
#   },
#   {
#       text: "Неудачи",
#       level: 3,
#       test_id: 1
#   },
#   {
#       text: "Удолетворение",
#       level: 4,
#       test_id: 1
#   },
#   {
#       text: "Вина",
#       level: 5,
#       test_id: 1
#   },
#   {
#       text: "Наказание",
#       level: 6,
#       test_id: 1
#   },
#   {
#       text: "Разочарование",
#       level: 7,
#       test_id: 1
#   },
#   {
#       text: "Критика",
#       level: 8,
#       test_id: 1
#   },
#   {
#       text: "Самоубийство",
#       level: 9,
#       test_id: 1
#   },
#   {
#       text: "Слезы",
#       level: 10,
#       test_id: 1
#   },
#   {
#       text: "Раздражение",
#       level: 11,
#       test_id: 1
#   },
#   {
#       text: "Интерес",
#       level: 12,
#       test_id: 1
#   },
#   {
#       text: "Решения",
#       level: 13,
#       test_id: 1
#   },
#   {
#       text: "Внешний вид",
#       level: 14,
#       test_id: 1
#   },
#   {
#       text: "Работа",
#       level: 15,
#       test_id: 1
#   },
#   {
#       text: "Сон",
#       level: 16,
#       test_id: 1
#   },
#   {
#       text: "Усталость",
#       level: 17,
#       test_id: 1
#   },
#   {
#       text: "Аппетит",
#       level: 18,
#       test_id: 1
#   },
#   {
#       text: "Потеря веса",
#       level: 19,
#       test_id: 1
#   },
#   {
#       text: "Физическое состояние",
#       level: 20,
#       test_id: 1
#   },
#   {
#       text: "Секс",
#       level: 21,
#       test_id: 1
#   },
#   {
#       text: "Я спокоен",
#       level: 1,
#       test_id: 2
#   },
#   {
#       text: "Мне ничто не угрожает",
#       level: 2,
#       test_id: 2
#   },
#   {
#       text: "Я нахожусь в напряжении",
#       level: 3,
#       test_id: 2
#   },
#   {
#       text: "Я испытываю сожаление",
#       level: 4,
#       test_id: 2
#   },
#   {
#       text: "Я чувствую себя свободно",
#       level: 5,
#       test_id: 2
#   },
#   {
#       text: "Я расстроен",
#       level: 6,
#       test_id: 2
#   },
#   {
#       text: "Меня волнуют возможные неудачи",
#       level: 7,
#       test_id: 2
#   },
#   {
#       text: "Я чувствую себя отдохнувшим",
#       level: 8,
#       test_id: 2
#   },
#   {
#       text: "Я встревожен",
#       level: 9,
#       test_id: 2
#   },
#   {
#       text: "Я испытываю чувство внутреннего удовлетворения",
#       level: 10,
#       test_id: 2
#   },
#   {
#       text: "Я уверен в себе",
#       level: 11,
#       test_id: 2
#   },
#   {
#       text: "Я нервничаю",
#       level: 12,
#       test_id: 2
#   },
#   {
#       text: "Я не нахожу себе места",
#       level: 13,
#       test_id: 2
#   },
#   {
#       text: "Я взвинчен",
#       level: 14,
#       test_id: 2
#   },
#   {
#       text: "Я не чувствую скованности",
#       level: 15,
#       test_id: 2
#   },
#   {
#       text: "Я доволен",
#       level: 16,
#       test_id: 2
#   },
#   {
#       text: "Я озабочен",
#       level: 17,
#       test_id: 2
#   },
#   {
#       text: "Я слишком возбужден и мне не по себе",
#       level: 18,
#       test_id: 2
#   },
#   {
#       text: "Мне радостно",
#       level: 19,
#       test_id: 2
#   },
#   {
#       text: "Мне приятно",
#       level: 20,
#       test_id: 2
#   },
#   {
#       text: "Я испытываю удовольствие",
#       level: 21,
#       test_id: 2
#   },
#   {
#       text: "Я обычно быстро устаю",
#       level: 22,
#       test_id: 2
#   },
#   {
#       text: "Я легко могу заплакать",
#       level: 23,
#       test_id: 2
#   },
#   {
#       text: "Я хотел бы быть таким же счастливым, как и другие",
#       level: 24,
#       test_id: 2
#   },
#   {
#       text: "Нередко я проигрываю из-за того, что недостаточно быстро принимаю решения",
#       level: 25,
#       test_id: 2
#   },
#   {
#       text: "Обычно я чувствую себя бодрым",
#       level: 26,
#       test_id: 2
#   },
#   {
#       text: "Я спокоен, хладнокровен и собран",
#       level: 27,
#       test_id: 2
#   },
#   {
#       text: "Ожидаемые трудности обычно очень тревожат меня",
#       level: 28,
#       test_id: 2
#   },
#   {
#       text: "Я слишком переживаю из-за пустяков",
#       level: 29,
#       test_id: 2
#   },
#   {
#       text: "Я вполне счастлив",
#       level: 30,
#       test_id: 2
#   },
#   {
#       text: "Я принимаю все слишком близко к сердцу",
#       level: 31,
#       test_id: 2
#   },
#   {
#       text: "Мне не хватает уверенности в себе",
#       level: 32,
#       test_id: 2
#   },
#   {
#       text: "Обычно я чувствую себя в безопасности",
#       level: 33,
#       test_id: 2
#   },
#   {
#       text: "Я стараюсь избегать критических ситуаций и трудностей",
#       level: 34,
#       test_id: 2
#   },
#   {
#       text: "У меня бывает хандра",
#       level: 35,
#       test_id: 2
#   },
#   {
#       text: "Я доволен",
#       level: 36,
#       test_id: 2
#   },
#   {
#       text: "Всякие пустяки отвлекают и волнуют меня",
#       level: 37,
#       test_id: 2
#   },
#   {
#       text: "Я так сильно переживаю свои разочарования, что потом долго не могу о них забыть",
#       level: 38,
#       test_id: 2
#   },
#   {
#       text: "Я уравновешенный человек",
#       level: 39,
#       test_id: 2
#   },
#   {
#       text: "Меня охватывает беспокойство, когда я думаю о своих делах и заботах",
#       level: 40,
#       test_id: 2
#   }
# ].each do |q|
#   Question.create(text: q[:text], level: q[:level], test_id: q[:test_id])
# end



# [
  # {
  #     text: "Я не чувствую себя расстроенным, печальным.",
  #     value: 0,
  #     level: 1,
  #     question_id: 1
  # },
  # {
  #     text: "Я расстроен.",
  #     value: 1,
  #     level: 2,
  #     question_id: 1
  # }, 
  # {
  #     text: "Я все время расстроен и не могу от этого отключиться.",
  #     value: 2,
  #     level: 3,
  #     question_id: 1
  # }, 
  # {
  #     text: "Я настолько расстроен и несчастлив, что не могу это выдержать.",
  #     value: 3,
  #     level: 4,
  #     question_id: 1
  # }, 
  # {
  #     text: "Я не тревожусь о своем будущем.",
  #     value: 0,
  #     level: 1,
  #     question_id: 2
  # }, 
  # {
  #     text: "Я чувствую, что озадачен будушим.",
  #     value: 1,
  #     level: 2,
  #     question_id: 2
  # }, 
  # {
  #     text: "Я чувствую, что меня ничего не ждет в будущем.",
  #     value: 2,
  #     level: 3,
  #     question_id: 2
  # }, 
  # {
  #     text: "Мое будущее безнадежно, и ничто не может измениться к лучшему.",
  #     value: 3,
  #     level: 4,
  #     question_id: 2
  # }, 
  # {
  #     text: "Я не чувствую себя неудачником.",
  #     value: 0,
  #     level: 1,
  #     question_id: 3
  # }, 
  # {
  #     text: "Я чувствую, что терпел больше неудач, чем другие люди.",
  #     value: 1,
  #     level: 2,
  #     question_id: 3
  # }, 
  # {
  #     text: "Когда я оглядываюсь на свою жизнь, я вижу в ней много неудач.",
  #     value: 2,
  #     level: 3,
  #     question_id: 3
  # }, 
  # {
  #     text: "Я чувствую, что как личность я - полный неудачник.",
  #     value: 3,
  #     level: 4,
  #     question_id: 3
  # }, 
  # {
  #     text: "Я получаю столько же удовлетворения от жизни, как раньше.",
  #     value: 0,
  #     level: 1,
  #     question_id: 4
  # }, 
  # {
  #     text: "Я не получаю столько же удовлетворения от жизни, как раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 4
  # }, 
  # {
  #     text: "Я больше не получаю удовлетворения ни от чего.",
  #     value: 2,
  #     level: 3,
  #     question_id: 4
  # }, 
  # {
  #     text: "Я полностью не удовлетворен жизнью. и мне все надоело.",
  #     value: 3,
  #     level: 4,
  #     question_id: 4
  # }, 
  # {
  #     text: "Я не чувствую себя в чем-нибудь виноватым.",
  #     value: 0,
  #     level: 1,
  #     question_id: 5
  # }, 
  # {
  #     text: "Достаточно часто я чувствую себя виноватым.",
  #     value: 1,
  #     level: 2,
  #     question_id: 5
  # }, 
  # {
  #     text: "Большую часть времени я чувствую себя виноватым.",
  #     value: 2,
  #     level: 3,
  #     question_id: 5
  # }, 
  # {
  #     text: "Я постоянно испытываю чувство вины.",
  #     value: 3,
  #     level: 4,
  #     question_id: 5
  # }, 
  # {
  #     text: "Я не чувствую, что могу быть наказанным за что-либо.",
  #     value: 0,
  #     level: 1,
  #     question_id: 6
  # }, 
  # {
  #     text: "Я чувствую, что могу быть наказан.",
  #     value: 1,
  #     level: 2,
  #     question_id: 6
  # }, 
  # {
  #     text: "Я ожидаю, что могу быть наказан.",
  #     value: 2,
  #     level: 3,
  #     question_id: 6
  # }, 
  # {
  #     text: "Я чувствую себя уже наказанным.",
  #     value: 3,
  #     level: 4,
  #     question_id: 6
  # }, 
  # {
  #     text: "Я не разочаровался в себе.",
  #     value: 0,
  #     level: 1,
  #     question_id: 7
  # }, 
  # {
  #     text: "Я разочаровался в себе.",
  #     value: 1,
  #     level: 2,
  #     question_id: 7
  # }, 
  # {
  #     text: "Я себе противен.",
  #     value: 2,
  #     level: 3,
  #     question_id: 7
  # }, 
  # {
  #     text: "Я себя ненавижу.",
  #     value: 3,
  #     level: 4,
  #     question_id: 7
  # }, 
  # {
  #     text: "Я знаю, что я не хуже других.",
  #     value: 0,
  #     level: 1,
  #     question_id: 8
  # }, 
  # {
  #     text: "Я критикую себя за ошибки и слабости.",
  #     value: 1,
  #     level: 2,
  #     question_id: 8
  # }, 
  # {
  #     text: "Я все время обвиняю себя за свои поступки.",
  #     value: 2,
  #     level: 3,
  #     question_id: 8
  # }, 
  # {
  #     text: "Я виню себя во всем плохом, что происходит.",
  #     value: 3,
  #     level: 4,
  #     question_id: 8
  # }, 
  # {
  #     text: "Я никогда не думал покончить с собой.",
  #     value: 0,
  #     level: 1,
  #     question_id: 9
  # }, 
  # {
  #     text: "Ко мне приходят мысли покончить с собой, но я не буду их осуществлять.",
  #     value: 1,
  #     level: 2,
  #     question_id: 9
  # }, 
  # {
  #     text: "Я хотел бы покончить с собой.",
  #     value: 2,
  #     level: 3,
  #     question_id: 9
  # }, 
  # {
  #     text: "Я бы убил себя, если бы представился случай.",
  #     value: 3,
  #     level: 4,
  #     question_id: 9
  # }, 
  # {
  #     text: "Я плачу не больше, чем обычно.",
  #     value: 0,
  #     level: 1,
  #     question_id: 10
  # }, 
  # {
  #     text: "Сейчас я плачу чаще, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 10
  # }, 
  # {
  #     text: "Теперь я все время плачу.",
  #     value: 2,
  #     level: 3,
  #     question_id: 10
  # }, 
  # {
  #     text: "Раньше я мог плакать, а сейчас не могу, даже если мне хочется.",
  #     value: 3,
  #     level: 4,
  #     question_id: 10
  # }, 
  # {
  #     text: "Сейчас я раздражителен не более, чем обычно.",
  #     value: 0,
  #     level: 1,
  #     question_id: 11
  # }, 
  # {
  #     text: "Я более легко раздражаюсь, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 11
  # }, 
  # {
  #     text: "Теперь я постоянно чувствую, что раздражен.",
  #     value: 2,
  #     level: 3,
  #     question_id: 11
  # }, 
  # {
  #     text: "Я стал равнодушен к вещам, которые меня раньше раздражали.",
  #     value: 3,
  #     level: 4,
  #     question_id: 11
  # }, 
  # {
  #     text: "Я не утратил интереса к другим людям.",
  #     value: 0,
  #     level: 1,
  #     question_id: 12
  # }, 
  # {
  #     text: "Я меньше интересуюсь другими людьми, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 12
  # }, 
  # {
  #     text: "Я почти потерял интерес к другим людям.",
  #     value: 2,
  #     level: 3,
  #     question_id: 12
  # }, 
  # {
  #     text: "Я полностью утратил интерес к другим людям.",
  #     value: 3,
  #     level: 4,
  #     question_id: 12
  # }, 
  # {
  #     text: "Я откладываю принятие решения иногда, как и раньше.",
  #     value: 0,
  #     level: 1,
  #     question_id: 13
  # }, 
  # {
  #     text: "Я чаще, чем раньше, откладываю принятие решения.",
  #     value: 1,
  #     level: 2,
  #     question_id: 13
  # }, 
  # {
  #     text: "Мне труднее принимать решения, чем раньше.",
  #     value: 2,
  #     level: 3,
  #     question_id: 13
  # }, 
  # {
  #     text: "Я больше не могу принимать решения.",
  #     value: 3,
  #     level: 4,
  #     question_id: 13
  # }, 
  # {
  #     text: "Я не чувствую, что выгляжу хуже, чем обычно.",
  #     value: 0,
  #     level: 1,
  #     question_id: 14
  # }, 
  # {
  #     text: "Меня тревожит, что я выгляжу старым и непривлекательным.",
  #     value: 1,
  #     level: 2,
  #     question_id: 14
  # }, 
  # {
  #     text: "Я знаю, что в моей внешности произошли существенные изменения, делающие меня непривлекательным.",
  #     value: 2,
  #     level: 3,
  #     question_id: 14
  # }, 
  # {
  #     text: "Я знаю, что выгляжу безобразно.",
  #     value: 3,
  #     level: 4,
  #     question_id: 14
  # }, 
  # {
  #     text: "Я могу работать так же хорошо, как и раньше.",
  #     value: 0,
  #     level: 1,
  #     question_id: 15
  # }, 
  # {
  #     text: "Мне необходимо сделать дополнительное усилие, чтобы начать делать что-нибудь.",
  #     value: 1,
  #     level: 2,
  #     question_id: 15
  # }, 
  # {
  #     text: "Я с трудом заставляю себя делать что-либо.",
  #     value: 2,
  #     level: 3,
  #     question_id: 15
  # }, 
  # {
  #     text: "Я совсем не могу выполнять никакую работу.",
  #     value: 3,
  #     level: 4,
  #     question_id: 15
  # }, 
  # {
  #     text: "Я сплю так же хорошо, как и раньше.",
  #     value: 0,
  #     level: 1,
  #     question_id: 16
  # }, 
  # {
  #     text: "Сейчас я сплю хуже, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 16
  # }, 
  # {
  #     text: "Я просыпаюсь на 1-2 часа раньше, и мне трудно заснуть опять.",
  #     value: 2,
  #     level: 3,
  #     question_id: 16
  # }, 
  # {
  #     text: "Я просыпаюсь на несколько часов раньше обычного и больше не могу заснуть.",
  #     value: 3,
  #     level: 4,
  #     question_id: 16
  # }, 
  # {
  #     text: "Я устаю не больше, чем обычно.",
  #     value: 0,
  #     level: 1,
  #     question_id: 17
  # }, 
  # {
  #     text: "Теперь я устаю быстрее, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 17
  # }, 
  # {
  #     text: "Я устаю почти от всего, что я делаю.",
  #     value: 2,
  #     level: 3,
  #     question_id: 17
  # }, 
  # {
  #     text: "Я не могу ничего делать из-за усталости.",
  #     value: 3,
  #     level: 4,
  #     question_id: 17
  # }, 
  # {
  #     text: "Мой аппетит не хуже, чем обычно.",
  #     value: 0,
  #     level: 1,
  #     question_id: 18
  # }, 
  # {
  #     text: "Мой аппетит стал хуже, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 18
  # }, 
  # {
  #     text: "Мой аппетит теперь значительно хуже.",
  #     value: 2,
  #     level: 3,
  #     question_id: 18
  # }, 
  # {
  #     text: "У меня вообще нет аппетита.",
  #     value: 3,
  #     level: 4,
  #     question_id: 18
  # }, 
  # {
  #     text: "В последнее время я не похудел или потеря веса была незначительной.",
  #     value: 0,
  #     level: 1,
  #     question_id: 19
  # }, 
  # {
  #     text: "За последнее время я потерял более 2 кг.",
  #     value: 1,
  #     level: 2,
  #     question_id: 19
  # }, 
  # {
  #     text: "Я потерял более 5 кг.",
  #     value: 2,
  #     level: 3,
  #     question_id: 19
  # }, 
  # {
  #     text: "Я потерял более 7 кr.",
  #     value: 3,
  #     level: 4,
  #     question_id: 19
  # }, 
  # {
  #     text: "Я беспокоюсь о своем здоровье не больше, чем обычно.",
  #     value: 0,
  #     level: 1,
  #     question_id: 20
  # }, 
  # {
  #     text: "Меня тревожат проблемы моего физического здоровья, такие, как боли, расстройство желудка, запоры и т.д.",
  #     value: 1,
  #     level: 2,
  #     question_id: 20
  # }, 
  # {
  #     text: "Я очень обеспокоен своим физическим состоянием, и мне трудно думать о чем-либо другом.",
  #     value: 2,
  #     level: 3,
  #     question_id: 20
  # }, 
  # {
  #     text: "Я настолько обеспокоен своим физическим состоянием, что больше ни о чем не могу думать.",
  #     value: 3,
  #     level: 4,
  #     question_id: 20
  # }, 
  # {
  #     text: "В последнее время я не замечал изменения своего интереса к сексу.",
  #     value: 0,
  #     level: 1,
  #     question_id: 21
  # }, 
  # {
  #     text: "Меня меньше занимают проблемы секса, чем раньше.",
  #     value: 1,
  #     level: 2,
  #     question_id: 21
  # }, 
  # {
  #     text: "Сейчас я значительно меньше интересуюсь сексуальными проблемами, чем раньше.",
  #     value: 2,
  #     level: 3,
  #     question_id: 21
  # }, 
  # {
  #     text: "Я полностью утратил сексуальный интерес.",
  #     value: 3,
  #     level: 4,
  #     question_id: 21
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 22
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 22
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 22
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 22
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 23
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 23
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 23
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 23
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 24
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 24
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 24
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 24
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 25
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 25
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 25
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 25
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 26
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 26
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 26
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 26
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 27
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 27
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 27
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 27
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 28
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 28
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 28
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 28
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 29
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 29
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 29
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 29
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 30
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 30
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 30
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 30
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 31
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 31
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 31
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 31
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 32
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 32
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 32
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 32
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 33
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 33
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 33
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 33
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 34
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 34
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 34
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 34
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 35
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 35
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 35
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 35
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 36
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 36
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 36
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 36
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 37
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 37
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 37
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 37
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 38
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 38
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 38
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 38
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 39
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 39
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 39
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 39
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 40
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 40
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 40
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 40
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 41
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 41
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 41
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 41
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 42
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 42
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 42
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 42
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 43
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 43
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 43
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 43
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 44
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 44
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 44
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 44
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 45
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 45
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 45
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 45
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 46
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 46
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 46
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 46
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 47
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 47
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 47
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 47
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 48
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 48
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 48
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 48
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 49
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 49
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 49
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 49
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 50
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 50
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 50
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 50
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 51
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 51
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 51
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 51
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 52
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 52
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 52
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 52
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 53
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 53
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 53
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 53
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 54
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 54
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 54
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 54
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 55
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 55
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 55
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 55
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 56
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 56
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 56
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 56
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 57
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 57
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 57
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 57
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 58
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 58
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 58
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 58
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 59
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 59
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 59
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 59
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 60
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 60
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 60
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 60
  # },
  # {
  #     text: "Нет, это не так.",
  #     value: 1,
  #     level: 1,
  #     question_id: 61
  # },
  # {
  #     text: "Пожалуй, так.",
  #     value: 2,
  #     level: 2,
  #     question_id: 61
  # },
  # {
  #     text: "Верно.",
  #     value: 3,
  #     level: 3,
  #     question_id: 61
  # },
  # {
  #     text: "Совершено верно.",
  #     value: 4,
  #     level: 4,
  #     question_id: 61
  # }
# ].each do |a|
#   Answer.create(
#     text: a[:text],
#     level: a[:level],
#     value: a[:value],
#     question_id: a[:question_id]
#   )
# end
# 2.times do
#   MedicalRecord.create(
#     doctor: User.doctor.first,
#     patient: User.doctor.first.patients.first,
#     content: Faker::Lorem.paragraph(sentence_count: 20)
#   )
# end

# User.all.each do |user|
#   from = Faker::Date.between(from: 3.month.ago, to: Date.today)
#   by = Faker::Date.between(from: 2.month.ago, to: Date.today)
#   number_of_date = (by.to_date - from.to_date).to_i
#   user.vacations.create(
#     from: from,
#     by: by,
#     number_of_days: number_of_date
#   )
# end
