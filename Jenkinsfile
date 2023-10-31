pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                sh "make setup"
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
