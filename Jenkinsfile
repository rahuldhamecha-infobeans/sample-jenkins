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
                sh 'chmod 777 -R ~/.local'
                sh 'pip3 install numpy'
                sh 'codecarbon init'
                sh 'codecarbon monitor'
            }
        }
    }
}