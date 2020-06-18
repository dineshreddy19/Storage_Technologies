# docker run --hostname=quickstart.cloudera --privileged=true -t -i -p 8888 -v /home/cloudera/task_6/:/root/hometask/ cloudera/quickstart:latest /usr/bin/docker-quickstart

hadoop fs -mkdir /user/root/map_reducetask
hadoop fs -copyFromLocal /root/mapreducetask/dst-stu/d/mr/tf-idf/ /user/root/map_reducetask
cp -R /root/hometask /home/cloudera/
chown -R cloudera:cloudera /home/cloudera/hometask/

hadoop jar /usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-2.6.0-mr1-cdh5.7.0.jar \
-D mapred.reduce.tasks=1 \
-input /user/root/mapreducetask/dst-stu/d/mr/tf-idf/ \
-output /user/root/mapreducetask/dst-stu/d/mr/tf-idf/out \
-mapper /home/cloudera/map_reducetask/mapper.py \
-reducer /home/cloudera/map_reducetask/reducer.py

hadoop fs -text /user/root/mapreducetask/dst-stu/d/mr/tf-idf/out/part*
