#!/usr/bin/awk -f
BEGIN {
    vx="no";
}

/a\w+/ {print}
(! /a\w+/) {print vx}
