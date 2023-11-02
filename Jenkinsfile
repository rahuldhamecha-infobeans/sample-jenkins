pipeline {
    agent {
        docker { image 'python:3.10-buster' }
    }
    stages {
        stage('install dependencies') {
            steps {
                sh 'python -m pip install codecarbon'
            }
        }
    }
}