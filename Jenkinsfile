pipeline{
    agent{label 'master'}
    tools{
        maven 'M3'
    }
    stages{
        stage('Checkout'){
            steps{
                git 'https://github.com/nethuGitHub/CapeStone.git'
            }
        }
        stage('Build'){
            steps{
                 sh 'mvn clean compile'
            }
        }
        stage('Test'){
            steps{
                     sh 'mvn clean test'
            }
        }
        stage('Package'){
            steps{
                sh 'mvn clean package'
                }
         stage('Deploy'){
            steps{
		        sh 'scp /var/jenkins_home/workspace/CapstoneBuildWar/target/bank##2.1.0.local.war 7c23ef4c50a4:/usr/local/tomcat/webapps/'
		        sh "ssh produser@18.191.146.237 'sudo docker build -t 118237/capstone4 ./'"
		        sh "ssh produser@18.191.146.237 'docker container run -it --publish 8085:8080 118237/capstone4'"
            }
        }
    }
}
