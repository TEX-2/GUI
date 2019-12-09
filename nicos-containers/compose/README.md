# compose

1. git clone https://github.com/TEX-2/GUI

2. cd GUI/nocos-containers/compose

В каталоге nicos_pnpi храняться файлы установок (в данный момент находится демонстарционная установка demo).

Для создания новой установки создаётся каталог внутри этой папки, также необходимо поменять значение переменной INSTRUMENTS в docker-compose.yml для каждого контейнера на соответсвующее значение.


## Запуск без инсталяции

### запуск
./nicos-compose.sh start
### остановка 
./nicos-compose.sh stop
### перезапуск:
./nicos-compose.sh restart
