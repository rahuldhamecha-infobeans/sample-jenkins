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
            sh 'mkdir "Rock Demo"'
            sh 'codecarbon monitor'
        }
    }
}
