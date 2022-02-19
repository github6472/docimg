pipeline {
    agent any

    stages {
        stage('login') {
            steps {
                withCredentials([usernameColonPassword(credentialsId: 'dockerhub_id', variable: 'login')]) {

                }
            }
        }
        stage('docker creating image') {
            steps {
                sh 'docker build -t shaikghouse/muni . '
            }
        }
        stage('docker push '){
            steps{
                sh 'docker push shaikghouse/muni'
            }
        }
        stage('git checkout') {
            steps {
                git branch: 'master',url:'https://github.com/github6472/drepo.git'
            }
        }
        stage('docker containers'){
            steps {
                sh 'docker-compose up'
            }
        }
        
    }
}

