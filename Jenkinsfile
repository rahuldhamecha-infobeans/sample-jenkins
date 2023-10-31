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
                sh 'sudo pip3 install codecarbon --user'
                sh 'sudo codecarbon init'
                sh 'sudo codecarbon monitor'
            }
        }
    }
}