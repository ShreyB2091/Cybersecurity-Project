#!/bin/bash

input=$1
output=$2
if [ $# -ne 2 ]
then
    echo -e "Invalid arguments.\nEnter 2 file names\n1st for input file 2nd for output file"
else
    if test -f "$input"
    then
        awk 'NR!=1{print $1, $2, $3, $5, $6, $7, $10}' FS="," "$input" > "$output"
        awk 'BEGIN{print "\nColleges whose Highest Degree is Bachelor'\''s is:"}(NR!=1 && $3=="Bachelor'\''s") {print $1}' FS="," "$input" >> "$output"
        awk '
        BEGIN{ print "\nThe geography-wise admission rate is:" }
        (NR!=1){
            title[$6]=$6
            count[$6]=count[$6]+1
            total[$6]=total[$6]+$7
        }
        END{
            for (i in count)
            {
                printf "%s: %.4f\n", title[i], total[i]/count[i]
            }
        }' FS="," "$input" >> "$output"
        echo -e "\nColleges with maximum Median Earnings are:" >> "$output"
        sort -t, -r -s -n -k16,16 "$input" | awk '(FNR<=5){print $1}' FS="," >> "$output"
    else
        echo "Please enter a valid input file name"
    fi
fi