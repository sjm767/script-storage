#30일전 이름을 가진 토픽들을 배열에 담음 
YESTERDAY=`date +%Y%m%d -d -30day`
TOPICS=(`sudo kafka-topics --bootstrap-server localhost:9092 --list | grep $YESTERDAY`)

#배열을 순회하면서 삭제 
for topic in ${TOPICS[@]}
do
        sudo kafka-topics --bootstrap-server localhost:9092 --delete --topic $topic        
done