pipeline {
    agent any
    stages {
        stage('Run Tests') {
            parallel {
                stage('Test On Linux') {
                    steps {
                        sh 'make build'
                        sh "make monitor"
                    }
                }
                stage('Up Composer Data') {
                    steps {
                        sh "make up"
                        sh "make composer-update"
                        sh "make data"
                        sh 'make terminate'
                    }
                }
            }
        }

    }
}