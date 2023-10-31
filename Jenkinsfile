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
            sh 'cd "/var/lib/jenkins/workspace/"'
            sh 'mkdir "Terst Demo"'
        }
    }
}
