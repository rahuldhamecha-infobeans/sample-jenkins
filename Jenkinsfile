pipeline {
    agent {
        docker { image 'python:3' }
    }

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Code Carbon') {
            steps {
                sh '''
                pip install codecarbon
                codecarbon init
                codecarbon monitor
                '''
            }
        }
    }
}
