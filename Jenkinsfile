pipeline {
	agent any
		stages {
			stage ('checkout') {
				steps {
					checkout scm }
				}				
			stage('build') {
				steps {
				      sh 'mvn install'} 
				}
			stage ('definescript') {
				steps {
				sh 'sshpass -p "Chinnu143" scp target/myntra.war sonu@172.17.0.2:/home/sonu/software/apache-tomcat-8.5.23'}
				}
			stage ('serverstart') {
				steps { 
					sh 'sshpass -p "Chinnu143" ssh sonu@172.17.0.2 "JAVA_HOME=/home/sonu/software/jdk1.8.0_151" "/home/sonu/software/apache-tomcat-8.5.23/bin/startup.sh"'}
				}	
			}		
		}
	
