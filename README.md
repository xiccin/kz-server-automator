### What is it?
A set of bash scripts to quickly deploy a GOKZ server with FastDL inside a docker container. <br>
All you need is this repo, and docker-compose installed.
<br><br>


### Why does it exist?
Because automation is cool...<br>
(and you don't need to waste time)
<br><br>


### Requirements:
____________

##### For local server:
- specified csgo port and port 80 should be unused.

##### For public server:
- specified csgo port and port 80 should be unused.
- all the ports specified should be forwarded correctly.
- ip should be static
<br><br>


### Instructions:
____________

#### How do I install docker-compose?
Here: https://command-not-found.com/docker-compose
<br><br>


#### To setup local server:
- clone the repo:
```
git clone https://github.com/xiccin/kz-server-automator
```
<br>

- replace csgo_glst token with yours:
```
cd kz-server-automator/container-setup
vim container-bootstrap.sh
```
<br>

- run 
```
./container-bootstrap.sh console
```
<br><br>

#### To setup a public server:
- clone the repo:
```
git clone https://github.com/xiccin/kz-server-automator
```
<br>

- replace csgo_glst token with yours:
- replace domain with your domain or public ip.
```
cd kz-server-automator/container-setup
vim container-bootstrap.sh
```
<br>

- run 
```
./container-bootstrap.sh console
```
<br>

- run 
```
./container-bootstrap.sh console
```
<br><br>
