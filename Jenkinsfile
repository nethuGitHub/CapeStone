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
        }
        stage('Deploy'){
            steps{
                 RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
 		 && tar xzvf docker-17.04.0-ce.tgz \
  		&& mv docker/docker /usr/local/bin \
  		&& rm -r docker docker-17.04.0-ce.tgz
		sh "docker image build -t 118237/capestone4 ./"
		sh "docker run -d -p 8081:8080 118237/Capestone4"
	    }  
            }
    }
}
