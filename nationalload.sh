echo ">>>>> hab svc load kkwentus/national-parks --bind database:np-mongodb.default --channel testing --strategy at-once"
hab svc load kkwentus/national-parks --bind database:np-mongodb.default --channel development --strategy at-once 
