requirements:

for local sv:
port 80 should be unused, docker-compose installed,

for public sv:
port 80 should be unused, docker-compose installed, ip should be static, port specified in container-bootstrap.sh should be forwarded correctly, domain should point to your public ip. just change csgo gslt and domain without http://

clone the repo:
```
git clone https://github.com/xiccin/kz-server-automator`
```


edit csgo_glst in container-bootstrap.sh
```
cd kz-server-automator/container-setup
vim container-bootstrap.sh
```


run 
```
./container-bootstrap.sh
```
