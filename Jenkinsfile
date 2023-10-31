pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('CodeCarbon Analysis') {
            steps {
                sh 'codecarbon monitor --no-api'
            }
        }
    }
}
