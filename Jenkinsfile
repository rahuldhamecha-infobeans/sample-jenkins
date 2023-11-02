pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
                sh 'curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10'
                sh 'python3.10 -m pip --version'
                sh 'python3.10 -m pip install --upgrade pip'
                sh 'pip install codecarbon --user'
            }
        }
    }
}