pipeline {
    agent any
    stages {
        stage('build'){
            steps {
                sh 'make build'
            }
        }
        stage('Run Tests') {
            parallel {
                stage('Test On Linux') {
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
                sh 'make terminate'
            }
        }
    }
}