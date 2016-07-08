#!/bin/bash
STR="TESTING ..."

RND=$RANDOM

ERR=$(( $RND % 10 ));

echo $STR

echo "<test_report></test_report>" >> test_results.xml

if [ $ERR -lt 1 ]
then
	echo "ERROR DURING TESTS"
	exit 1
else
	echo "TESTING PASSED"
	exit 0
fi
