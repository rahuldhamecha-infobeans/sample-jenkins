pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
                sh 'python3 --version'
                sh 'python3 -m pip install codecarbon --user'
                sh 'python3 tracker_start.py'
            }
        }
        stage('Build') {
            steps {
                sh 'make build'
            }
        }
        stage('Stop Tracker') {
            steps {
                sh 'python3 tracker_stop.py'
            }
        }
    }
}