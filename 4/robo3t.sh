#!/usr/bin/env bash

echo 'WORKING WITH ROBO3T QUERY'

mongo --host buax1aiwspzvpc2-mongodb.services.clever-cloud.com --port 27017 --authenticationDatabase buax1aiwspzvpc2 --authenticationMechanism SCRAM-SHA-1 -u uwyfwcargufdxgma1hrk -p uduwnoSOiGrFEaWeniup <<EOF
use buax1aiwspzvpc2
try {
   db.products.insertMany( [
      { _id: 10, item: "large box", qty: 20 },
      { _id: 11, item: "small box", qty: 55 },
      { _id: 12, item: "medium box", qty: 30 }
   ] );
} catch (e) {
   print (e);
}

db.getCollection('products').find({_id:11})
EOF

