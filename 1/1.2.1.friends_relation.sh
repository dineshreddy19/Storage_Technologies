#!/bin/bash
DATA_DIR="$HOME/dst-stu/d"
jq -r ".friends[]|{name, id:.id, know:.knows[], like:.music[]}|[.know, .name, .id]|@csv" "$DATA_DIR/friends.json"  | sort -t, -u -k1,2 | awk -f'./csv-to-tree_friend.awk' > tre_friend.dot && \
dot -Tjpeg tre_friend.dot -o tre_friend.jpeg && eog --fullscreen tre_friend.jpeg
