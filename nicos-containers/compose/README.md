# compose

1. git clone https://github.com/TEX-2/GUI

2. cd GUI/nicos-containers/compose

В каталоге nicos_pnpi храняться файлы установок (в данный момент находится демонстарционная установка demo).

Для создания новой установки создаётся каталог внутри этой папки, также необходимо поменять значение переменной INSTRUMENT в docker-compose.yml для каждого контейнера на соответсвующее значение установки (в нашем случае nicos_pnpi.tex2 когда мы её сделаем).


## Запуск без инсталяции

### запуск
./nicos-compose.sh start
### остановка 
./nicos-compose.sh stop
### перезапуск:
./nicos-compose.sh restart

После запуска создаются каталоги ./data и ./log. 
