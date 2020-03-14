#!/usr/bin/awk -f
BEGIN {
    header="Permissions C owner group  size changed name";
    vx="--skip--";
    totalbytes=0;
}
END {
    print "End:\t total size=" totalbytes;
}

(NR % 5)==0 { print header }
{ totalbytes += $5; print; }

