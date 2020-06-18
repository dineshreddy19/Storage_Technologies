#!/bin/bash
echo "Running Mapper Program" &&\
cat $HOME/dst-stu/d/mr/tf-idf/f1.tsv | $HOME/dst-stu/src/6/mapper.py &&\
	echo "Running Reducer Program" &&\
cat $HOME/dst-stu/d/mr/tf-idf/f1.tsv | $HOME/dst-stu/src/6/mapper.py | sort -k1,1 | $HOME/dst-stu/src/6/reducer.py
