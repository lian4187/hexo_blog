#!/bin/bash

npm install
hexo clean && hexo g && hexo d && hexo server -i192.168.1.100 -p8125 -l
