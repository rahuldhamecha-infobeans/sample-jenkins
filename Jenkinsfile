pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                sh "make build"
                sh "make up"
            }
        }
    }
    post {
        success {
            sh 'mkdir "Sample Demo"'
            sh 'codecarbon monitor'
        }
    }
}
