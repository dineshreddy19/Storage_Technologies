#!/bin/bash
DATA_DIR="$HOME/dst-stu/d" && \
cat "$DATA_DIR/tre.csv" | awk -f'./csv-to-tree.awk' > tre.dot
