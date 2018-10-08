#!/usr/bin/awk -f

BEGIN {
    #Field separator
    FS=":"
}
{
    if ( $6 ~ /home/)
    {
    print $1
}
 }
