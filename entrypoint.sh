JMETER_SCRIPT=$1
SMOKE_RESULTS="result.csv"
LOG_FILE="log.log"
	jmeter -n -t $JMETER_SCRIPT \
	-l /data/$SMOKE_RESULTS -j /data/$LOG_FILE
	

echo "--------------- execution done --------------"

#cat $SMOKE_RESULTS

echo "--------------- check Logs below --------------"

#cat $LOG_FILE