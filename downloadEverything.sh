wget -O AllFiles.zip https://github.com/uwex-learning-tech/DS730/raw/refs/heads/main/AllFiles.zip
unzip AllFiles.zip

hdfs dfs -mkdir /user/maria_dev/pigtest
hdfs dfs -copyFromLocal Batting.csv /user/maria_dev/pigtest/
hdfs dfs -copyFromLocal Complaints.csv /user/maria_dev/pigtest/
hdfs dfs -copyFromLocal Master.csv /user/maria_dev/pigtest/
hdfs dfs -copyFromLocal Fielding.csv /user/maria_dev/pigtest/

hdfs dfs -mkdir /user/maria_dev/hivetest
hdfs dfs -copyFromLocal numbers.txt /user/maria_dev/hivetest/
hdfs dfs -copyFromLocal Batting.csv /user/maria_dev/hivetest/
hdfs dfs -mkdir /user/maria_dev/hivetest/master/
hdfs dfs -copyFromLocal Master.csv /user/maria_dev/hivetest/master/
hdfs dfs -mkdir /user/maria_dev/hivetest/financial/
hdfs dfs -copyFromLocal etfs.csv /user/maria_dev/hivetest/financial/
hdfs dfs -mkdir /user/maria_dev/hivetest/metadata/
hdfs dfs -copyFromLocal meta.csv /user/maria_dev/hivetest/metadata/
hdfs dfs -mkdir /user/maria_dev/hivetest/fielding/
hdfs dfs -copyFromLocal Fielding.csv /user/maria_dev/hivetest/fielding/

hdfs dfs -copyFromLocal wap.txt /user/zeppelin/

hdfs dfs -copyFromLocal smaller.csv /user/zeppelin/

hdfs dfs -mkdir /user/zeppelin/taxi/
hdfs dfs -copyFromLocal taxi2018.csv /user/zeppelin/taxi/

hdfs dfs -mkdir /user/maria_dev/final/
hdfs dfs -mkdir /user/maria_dev/final/Oshkosh/
hdfs dfs -mkdir /user/maria_dev/final/IowaCity/
hdfs dfs -copyFromLocal OshkoshWeather.csv /user/maria_dev/final/Oshkosh/
hdfs dfs -copyFromLocal IowaCityWeather.csv /user/maria_dev/final/IowaCity/

rm *.csv
rm *.txt
rm AllFiles.zip

rm downloadEverything.sh
