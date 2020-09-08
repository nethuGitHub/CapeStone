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
                     junit '**/target/surefire-reports/TEST-*.xml'
            }
        }
        stage('verify'){
            steps{
                     sh 'mvn clean verify'
            }
        }
        stage('Package'){
            steps{
                sh 'mvn clean package'
                }
        }
    }
}
