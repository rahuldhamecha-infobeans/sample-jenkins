pipeline {
    agent {
        docker { image 'python:3' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'pip --version'
            }
        }

        stage('CodeCarbon') {
            steps {
                sh 'sudo python -m pip install codecarbon --user'
                sh 'codecarbon init'
                sh 'codecarbon monitor'
            }
        }
    }
}