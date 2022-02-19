pipeline {
    agent any

    stages {
        stage('login') {
            steps {
                withCredentials([usernameColonPassword(credentialsId: 'dockerhub_id', variable: 'login')]) {

                }
            }
        }
        stage('docker createe image') {
            steps {
                sh 'docker build -t /home/workspace/dev-data/docimg/ shaikghouse/muni . '
            }
        }
        stage('git checkout') {
            steps {
                git branch: 'master',url:'https://github.com/github6472/drepo.git'
            }
        }
    }
}

