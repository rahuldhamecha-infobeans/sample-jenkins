pipeline {
    agent any
    stages {
        stage('Run Tests') {
            parallel {
                stage('build'){
                    steps {
                        sh 'make build'
                    }
                }
                stage('Test On Linux') {
                    agent any
                    steps {
                        sh "make monitor"
                    }
                }
            }
        }
        stage('Up Composer Data') {
            steps {
                sh "make up"
                sh "make composer-update"
                sh "make data"
            }
        }
    }
}