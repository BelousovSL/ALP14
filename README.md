# Название выполняемого задания;
Разобраться с основами docker, с образом, эко системой docker в целом;

# Текст задания
1. Создайте свой кастомный образ nginx на базе alpine. После запуска nginx должен отдавать кастомную страницу (достаточно изменить дефолтную страницу nginx)
1. Определите разницу между контейнером и образом
1. Вывод опишите в домашнем задании.
1. Ответьте на вопрос: Можно ли в контейнере собрать ядро?

## Определите разницу между контейнером и образом
Контейнер это изолированный процес-процессы. Образ это как бы "Шаблон". Контейнеры создаються на основании образа. Из одного образа можно порадить множество контейнеров.

## Можно ли в контейнере собрать ядро?
Нет. В этом и смысл контейнера. Изоляция процессов на host ядре. Если очень хочется свое ядро, это путь к виртуализации.

Мой образ. 
docker push belousov2501/bestnginx:1.0.0

Проверка
```bash
docker compose up -d
```

http://localhost:86/