Домашнее задание к лекции «Select-запросы, выборки из одной таблицы»
Задание 1
Заполните базу данных из предыдущего домашнего задания. В ней должно быть:

не менее 8 исполнителей;
не менее 5 жанров;
не менее 8 альбомов;
не менее 15 треков;
не менее 8 сборников.
Внимание! Должны быть заполнены все поля каждой таблицы, в т.ч. таблицы связей (исполнителей с жанрами, исполнителей с альбомами, сборников с треками).

Задание 2
Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание! Результаты запросов не должны быть пустыми (учтите при заполнении таблиц).

название и год выхода альбомов, вышедших в 2018 году;
название и продолжительность самого длительного трека;
название треков, продолжительность которых не менее 3,5 минуты;
названия сборников, вышедших в период с 2018 по 2020 год включительно;
исполнители, чье имя состоит из 1 слова;
название треков, которые содержат слово "мой"/"my".
Результатом работы будет 3 файла в формате .sql:

с INSERT запросами (задание 1)
с SELECT запросами (задание 2)
с CREATE запросами (из предыдущей домашней работы)

Домашнее задание к лекции «Продвинутая выборка данных»
Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание! Результаты запросов не должны быть пустыми (при необходимости добавьте данные в таблицы).

количество исполнителей в каждом жанре;
количество треков, вошедших в альбомы 2019-2020 годов;
средняя продолжительность треков по каждому альбому;
все исполнители, которые не выпустили альбомы в 2020 году;
названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
название альбомов, в которых присутствуют исполнители более 1 жанра;
наименование треков, которые не входят в сборники;
исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
название альбомов, содержащих наименьшее количество треков.
Результатом работы будет 3 файла (с INSERT, SELECT запросами и CREATE запросами из предыдущего задания) в формате .sql (или .py/.ipynb, если вы будете писать запросы с использованием SQLAlchemy).
В случае если INSERT- и CREATE-запросы остались без изменений, приложите файлы c ними из предыдущих домашних заданий.

Результатом работы будет 3 файла в формате .sql:

с INSERT запросами (из предыдущей домашней работы)
с SELECT запросами (текущее задание)
с CREATE запросами (из второй домашней работы)
В случае если INSERT и CREATE запросы остались без изменений, приложите файлы c ними из предыдущих домашних заданий.
