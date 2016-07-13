#!/usr/bin/env bash

wget -qO ~/workspace/ep-exercicios/m1/e3/site_link "$1";

echo -n "$2: "
grep -oi "$2" ~/workspace/ep-exercicios/m1/e3/site_link | wc -l;