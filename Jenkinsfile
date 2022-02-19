pipeline {
    agent any

    stages {
        stage('docker createe image') {
            steps {
                sh 'docker build -t shaikghouse/muni . '
            }
        }
        stage('git checkout') {
            steps {
                git branch: 'master',url:'https://github.com/github6472/drepo.git'
            }
        }
    }
}

