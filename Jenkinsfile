pipeline {
    agent any
    stages {
        stage('Code Carbon Package Install and Tracker Start') {
            steps {
                sh 'python3 --version'
                sh 'python3 -m pip install codecarbon --user'
                sh 'python3 tracker_start.py'
            }
        }
        stage('Build') {
            steps {
                sh 'make setup'
            }
        }
        stage('Stop Tracker') {
            steps {
                sh 'python3 tracker_stop.py'
                sh 'chmod 777 emissions.csv'
                sh 'cp emissions.csv /var/www/learning/spam-ham-demo/uploads/'
            }
        }
    }
}