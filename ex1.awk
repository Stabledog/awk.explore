func round(n) {
    n = n + 0.5;
    n = int(n);
    return n;
}
#/^w/ && $2> 9000 {print $1,$2/1024,round($2/1024)"K"}
$5>9000 {print $9,$5,$5/1024,round($5/1024)"K"}

