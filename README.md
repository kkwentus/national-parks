# KLK NOTES
* the np-mongodb has a version in stable that will be grabbed by default, can leave that alone	

* the 6.3.0 I am going to use:: 	hab pkg channels kkwentus/national-parks/6.3.0/20180329172030

* the 6.4.0 I am going to promote:: 	hab pkg channels kkwentus/national-parks/6.4.0/20180405150215

* 6.3.0 should be in unstable and development.   

* 6.40 should in only unstable.  Else::  hab pkg demote kkwentus/national-parks/6.3.0/20180329172030 development

* a pkg search should then == 	
[33][default:/src:0]# hab pkg channels kkwentus/national-parks/6.3.0/20180329172030
» Retrieving channels for kkwentus/national-parks/6.3.0/20180329172030
bldr-948565520000286720
development
unstable"

[11][default:/src:0]# hab pkg channels kkwentus/national-parks/6.4.0/20180405150215
» Retrieving channels for kkwentus/national-parks/6.4.0/20180405150215
bldr-953569367693508608
unstable"

* beforehand:  cleanup docker images .  nothing should be running.   "docker images -a"  and then "docker rmi -f <image id>       "docker ps -a" and then "docker rm <id>" on everything that is still sitting around even if exited. 
beforehand: run demote script and make sure only the 6.3.0 package is in prod


## Running in docker studio

```
$env:HAB_DOCKER_OPTS="-p 8080:8080"
hab studio enter
hab start mwrock/np-mongodb
hab start mwrock/national-parks --bind database:np-mongodb.default
```

Open your browser to `https://localhost:8080/national-parks` to see the app.

## Starting the supervisor in studio
```
hab sup run > /hab/sup/default/sup.log &
```

## Pre-Demo checklist

* Have studio open
* build at least once
* start np-mongodb
* Have open SSH sessions to hab1-3 and docker host
* increment NP version and commit (but do not push)
* make sure mongodb container is running on docker host
* have browser tabs open to my origins, local app, and azure app
