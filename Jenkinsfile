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
                sh 'docker build -t shaikghouse/muni . '
            }
        }
        stage('code pull') {
            steps {
                git branch: 'master',url:'https://github.com/github6472/drepo.git'
            }
        }
    }
}

