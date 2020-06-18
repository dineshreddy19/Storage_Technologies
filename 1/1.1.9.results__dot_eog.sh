#!/bin/bash
dot -Tjpeg tre.dot -o tre.jpeg && \
eog --fullscreen tre.jpeg | tee FS
