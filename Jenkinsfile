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
            sh '''
            pip install codecarbon
            codecarbon init
            codecarbon monitor
            '''
        }
    }
}
