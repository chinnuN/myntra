#!/bin/bash
ENV=$1
if [ $ENV = "QA" ];then
for i in `cat ip.txt`
   do
        echo "deploy war file $i:"
        sshpass -p "Chinnu143" traget/myntra1.war sonu@$i:/home/sonu/software/apache-tomcat-8.5.23/webapps
	echo "server starting $i"
	sshpass -p "Chinnu143" ssh sonu@$i "JAVA_HOME=/home/sonu/software/jdk1.8.0_151" "/home/sonu/software/apache-tomcat-8.5.23/bin/./startup.sh"
	done
	echo "deloy success"
fi

