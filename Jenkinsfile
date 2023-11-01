pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'make build & make monitor'
                sh 'make up'
                sh 'make composer-update'
            }
        }
    }
}