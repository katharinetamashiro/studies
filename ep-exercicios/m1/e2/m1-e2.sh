#!/usr/bin/env bash

wget -qO ~/workspace/ep-exercicios/m1/e2/site_link http://www.tldp.org/LDP/intro-linux/html/intro-linux.html;

echo -n "Linux: " 
grep -o "Linux" site_link | wc -l;

echo -n "linux: "
grep -o 'linux' site_link | wc -l;

echo -n "linux (case sensitive): " 
grep -oi 'linux' site_link | wc -l;