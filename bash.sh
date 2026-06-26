#!/bin/bash

LOG_PATH="/home/my-pc/logs/DevOps.logs"

BUGS=( "ERROR" "WARNING" "INFO" )

echo "BROWSING AND ANALYZING LOGS"

LOG_FILE=$(find $LOG_PATH -name "*.logs" -mtime -1)

echo $LOG_FILE

echo "============="
echo "=================="
echo "========================"
echo "=============================="
echo "========================"
echo "=================="
echo "============="


for FILE in $LOG_FILE;
do

	for BUG in ${BUGS[@]};
    do

		echo -e "\nThis is the OUTPUT on all $BUG logs\n"

		grep $BUG  $FILE



		echo -e "\nThis is the OUTPUT count on all $BUG logs\n"

		grep -c $BUG  $FILE


    done
done
