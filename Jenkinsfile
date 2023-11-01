pipeline {
    agent any
    stages {
        stage('build'){
            steps {
                sh 'python tracker_start.py'
                sh 'make build'
            }
        }
//         stage('Run Tests') {
//             parallel {
//                 stage('Test On Linux') {
//                     agent any
//                     steps {
//                         sh "make monitor"
//                     }
//                 }
//             }
//         }
        stage('Up Composer Data') {
            steps {
                sh "make up"
                sh "make composer-update"
                sh "make data"
                sh 'make tracker_stop.py'
            }
        }
    }
}