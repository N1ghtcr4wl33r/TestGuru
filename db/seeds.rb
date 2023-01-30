# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = Category.create([
  { title: 'Backend'},
  { title: 'Frontend'},
  { title: 'Mobile app development'}
])

tests = Test.create([
  { title: 'Ruby basic', level: 1, category_id: categories[0].id },
  { title: 'HTML basic', level: 1, category_id: categories[1].id },
  { title: 'JavaScript basic', level: 1, category_id: categories[2].id },
  { title: 'Ruby advanced', level: 2, category_id: categories[0].id },
  { title: 'HTML advanced', level: 2, category_id: categories[1].id },
  { title: 'JavaScript advanced', level: 2, category_id: categories[2].id },
  { title: 'Ruby professional', level: 3, category_id: categories[0].id },
  { title: 'HTML professional', level: 3, category_id: categories[1].id },
  { title: 'JavaScript professional', level: 3, category_id: categories[2].id },
])

users = User.create([
  { name: 'Jake', email: "jake1@gmail.com" },
  { name: 'Fry', email: "fry2@gmail.com" },
  { name: 'Diana', email: "diana3@gmail.com" },
])

questions = Question.create([
  { body: 'Что такое метод?', test_id: tests[0].id },
  { body: 'Что такое HTML?', test_id: tests[1].id },
  { body: 'Для чего используется оператор "&&"?', test_id: tests[2].id },
  { body: 'Чем отличается библиотека от фреймворка?', test_id: tests[3].id },
  { body: 'Как задать разные цвета для фрагментов текста веб-страницы?', test_id: tests[4].id },
  { body: 'Что такое DOM?', test_id: tests[5].id },
  { body: 'Что такое партицирование?', test_id: tests[6].id },
  { body: 'Что такое элемент canvas?', test_id: tests[7].id },
  { body: 'Что такое hoisting?', test_id: tests[8].id },
])

answers = Answer.create([
  { body: 'Функция или процедура, принадлежащая какому-то классу или объекту', correct: true, question_id: questions[0].id },
  { body: 'Подпрограмма, выполняющая какие-либо операции и возвращающая значение', correct: false, question_id: questions[0].id },
  { body: 'Последовательность логически связанных фрагментов, оформленных как отдельная часть программы', correct: false, question_id: questions[0].id },
  { body: 'Структурированный язык запросов', correct: false, question_id: questions[1].id },
  { body: 'Мультипарадигменный язык программирования', correct: false, question_id: questions[1].id },
  { body: 'Язык гипертекстовой разметки', correct: true, question_id: questions[1].id },
  { body: 'Логический оператор "&&" возвращает значение true, если один из операндов является true', correct: false, question_id: questions[2].id },
  { body: 'Логический оператор "&&" возвращает значение true, если оба операнда являются true', correct: true, question_id: questions[2].id },
  { body: 'Логический оператор "&&" возвращает значение true, если ни один из операндов не является true', correct: false, question_id: questions[2].id },
  { body: 'Отсутствием кода, который используется для решения распространенных задач разработки', correct: false, question_id: questions[3].id },
  { body: 'Присутсвием функций и классов', correct: false, question_id: questions[3].id },
  { body: 'Отсутствием инверсии управления', correct: true, question_id: questions[3].id },
  { body: 'Нужно поместить каждый из фрагментов внутрь парного тега color', correct: false, question_id: questions[4].id },
  { body: 'Нужно поместить каждый из фрагментов внутрь парного тега font', correct: true, question_id: questions[4].id },
  { body: 'Нужно поместить каждый из фрагментов внутрь парного тега menu', correct: false, question_id: questions[4].id },
  { body: 'Значение отсутствия значения', correct: false, question_id: questions[5].id },
  { body: 'Объектная модель документа', correct: true, question_id: questions[5].id },
  { body: 'Элемент, в котором происходит событие', correct: false, question_id: questions[5].id },
  { body: 'Метод разделения таблиц на логические части', correct: true, question_id: questions[6].id },
  { body: 'Асинхронное копирование данных между несколькими серверами', correct: false, question_id: questions[6].id },
  { body: 'Метод, позволяющий распределять данные между разными физическими серверами', correct: false, question_id: questions[6].id },
  { body: 'Элемент HTML5 для определения правил для языка разметки', correct: false, question_id: questions[7].id },
  { body: 'Элемент HTML5, который является контейнером для графики SVG', correct: false, question_id: questions[7].id },
  { body: 'Элемент HTML5 для вставки изображений, градиентов и комплексной анимации', correct: true, question_id: questions[7].id },
  { body: 'Термин, описывающий подъем переменной или функции в глобальную или функциональную области видимости', correct: true, question_id: questions[8].id },
  { body: 'Услуга по предоставлению ресурсов для размещения информации на сервере', correct: false, question_id: questions[8].id },
  { body: 'Способность функции во время создания запоминать ссылки на переменные и параметры, находящиеся в текущей области видимости', correct: false, question_id: questions[8].id },
])

tests_users = TestsUser.create([
  { user_id: users[0].id, test_id: tests[0].id},
  { user_id: users[0].id, test_id: tests[3].id},
  { user_id: users[0].id, test_id: tests[6].id},
  { user_id: users[1].id, test_id: tests[1].id},
  { user_id: users[1].id, test_id: tests[4].id},
  { user_id: users[1].id, test_id: tests[7].id},
  { user_id: users[2].id, test_id: tests[2].id},
  { user_id: users[2].id, test_id: tests[5].id},
  { user_id: users[2].id, test_id: tests[8].id},
])
