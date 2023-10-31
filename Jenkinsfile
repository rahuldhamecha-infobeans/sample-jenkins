pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
    post {
        success {
            sh 'codecarbon init'
            sh 'codecarbon monitor'
        }
    }
}
