pipeline {
    agent {
        docker { image 'ubuntu' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'yum install pip'
                sh 'pip --version'
            }
        }

        stage('CodeCarbon Install') {
            steps {
                sh 'pip install codecarbon'
            }
        }
        stage('CodeCarbon Run') {
            steps {
                sh 'codecarbon init'
                sh 'codecarbon monitor'
            }
        }
    }
}