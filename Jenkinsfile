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
            sh 'mkdir "Sample Demo 1"'
            sh 'codecarbon monitor'
        }
    }
}
