pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
                sh 'python3 --version'
                sh 'python3 -m pip install codecarbon --user'
            }
        }
    }
}