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
                    
		sh "sudo docker image build -t 118237/capestone4 ./"
		sh "docker run -d -p 8081:8080 118237/Capestone4"
	    }  
            }
    }
}
