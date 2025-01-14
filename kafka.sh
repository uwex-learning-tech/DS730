sudo yum remove ius community python36u
sudo yum install -y python36 python36-pip
sudo pip3 install kafka-python
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaCreateTopic.sh
chmod +x kafkaCreateTopic.sh
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaListTopics.sh
chmod +x kafkaListTopics.sh
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaProduceTopic.sh
chmod +x kafkaProduceTopic.sh
mkdir kafkaActivityProblems
cd kafkaActivityProblems
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/baseball.csv
cp ../kafkaProduceTopic.sh .
cd ..
mkdir kafkaProjectProblems
cd kafkaProjectProblems
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/baseballProject.csv
cp ../kafkaProduceTopic.sh .
cd ..
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaConsumeTopic.sh
chmod +x kafkaConsumeTopic.sh
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/connect-standalone.properties
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/connect-file-sink.properties
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/connect-file-source.properties
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/input
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaFileStream.sh
chmod +x kafkaFileStream.sh
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/inputTest
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/inputTestTwo
mkdir kafkaActivity
cd kafkaActivity
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaConsumer.py
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaFilterFile.py
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaConsumerFilter.py
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/kafkaProducer.py
hdfs dfs -copyToLocal /user/maria_dev/pigtest/Complaints.csv
echo "1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1" >> Complaints.csv
wget http://faculty.cs.uwosh.edu/faculty/krohn/ds730/JavaProj.zip
unzip JavaProj.zip
mv JavaProj/ProjSamples/input/moby.txt .
echo "END OF THE BOOK" >> moby.txt
rm -fr JavaProj*
chmod +x kafkaConsumer.py
chmod +x kafkaFilterFile.py
chmod +x kafkaConsumerFilter.py
chmod +x kafkaProducer.py
rm ../kafka.sh
