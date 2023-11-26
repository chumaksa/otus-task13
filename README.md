# otus-task13

# Dockerfile

1. Создайте свой кастомный образ nginx на базе alpine. После запуска nginx должен отдавать кастомную страницу \
   (достаточно изменить дефолтную страницу nginx).
2. Определите разницу между контейнером и образом. Вывод опишите в домашнем задании.
3. Ответьте на вопрос: Можно ли в контейнере собрать ядро?
4. Собранный образ необходимо запушить в docker hub и дать ссылку на ваш репозиторий. 

## (1-4) Кастомный образ nginx на базе alpine.

### Решение

Собран образ otus_alpine_nginx. Образ выложен в docker hub - https://hub.docker.com/r/chumaksa/otus_alpine_nginx. \
Спулить его можно коммандой:
```

docker pull chumaksa/otus_alpine_nginx
```

Создать и запустить контейнер можно следующим образом:
```

docker run -p 8080:80 -dt chumaksa/otus_alpine_nginx /bin/sh
```

## (2) Определите разницу между контейнером и образом. Вывод опишите в домашнем задании.

### Решение.

Образ это шаблон на котором строится запуск контейнера. Контейнер предстваляет собой уже готовое и запущенное \
приложение или сервис. Образы являются неизменяемыми, а контейнеры наоборот можно изменять. 

## (3) Ответьте на вопрос: Можно ли в контейнере собрать ядро?

### Решение.

Никаких дополнетельных ограничений в этом вопросе docker не накладывает. Например, \
можно создать контейнер на основе какого-либо дистрибутива и выполнить сборку ядра.
Ответ? да, это возможно. 

 	
