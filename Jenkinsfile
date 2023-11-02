pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
                sh 'python --version'
                sh 'pip install codecarbon --user'
            }
        }
    }
}