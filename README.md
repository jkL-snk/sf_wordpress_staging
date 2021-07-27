# Средство для развертывания имитации производственной среды проекта

## Требования к ПО

Для запуска потребуются: [Git](https://git-scm.com/), [Vagrant](https://www.vagrantup.com/).

## Перед использованием

#### Клонировать репозиторий

~~~
git clone https://github.com/jkL-snk/sf_wordpress_staging.git
~~~

Установить плагин [docker-compose для Vagrant](https://github.com/leighmcculloch/vagrant-docker-compose)

~~~
vagrant plugin install vagrant-docker-compose
~~~

## Запуск

~~~
cd sf_wordpress_staging
vagrant up
~~~


В состав входит контейнер webdav-client, который монтирует Яндекс-диск для создания бэкапов. Для запуска контейнера нужно указать пароль для приложения Яндекс-Диск в файле .env или в командной строке при ручном запуске:

~~~
WEBDRIVE_PASSWORD=<пароль для приложения яндексдиска> docker-compose up -d
~~~

Узнать, как создать пароль для приложения можно по этой ссылке: https://yandex.ru/support/id/authorization/app-passwords.html
