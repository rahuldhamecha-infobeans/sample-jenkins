pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
                sh 'pip install html5lib --user'
                sh 'pip install codecarbon --user'
            }
        }
    }
}