VOLTDB ODEVI ICIN
docker images - imageleri gösteriyor

docker pull voltdb/voltdb-community - voltdb konteynerını çekiyor

docker run -d -P -e HOST_COUNT=1 -e HOSTS=voltdb --name=voltdb --network=voltLocalCluster voltdb/voltdb-community:latest - node oluşturuyorjdbc

docker start <container-name> - containerın çalışmasını sağlar 

docker ps - çalışan nodeları/konteynerleri gösteriyor

docker exec -it <container-id> /bin/bash - konteynerlerin içine girip kod yazmayı sağlıyor

sqlcmd - exec'ten sonra sql kodu yazılmasını sağlıyor

exec selectAllSubscribers(prosedür ismi); - sqlcmd'nin içinde tanımlanan prosedürlerin çalışmasını sağlar

snap list - snap dosyalarını listelemek için

sudo apt autoremove - uygulama silindikten sonra gereksiz bağımlılıkları ortadan kaldırmak için



IGNITE ODEVI ICIN:
sudo su

docker run -d -p 10800:10800 apacheignite/ignite

sudo docker run -d apacheignite/ignite

docker ps 

docker exec -it <ip> /bin/bash - ip verip de kullanılabiliyor

ls ile dosyalara bakılmalı ve cd ile /apache-ignite/bin/ 'e gitmeliyiz

./sqlline.sh -u jdbc:ignite:thin://127.0.0.1 çalıştırıp isim ve şifre veriyoruz ben abc/abc kullandım

daha sonra sql komutlarımızı yazabiliyoruz

!closeall

sqlline !exit - sqlline'dan çıkmak için
