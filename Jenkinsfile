pipeline {
    agent any
    stages {
        stage('install dependencies') {
            steps {
                sh 'curl -sS https://bootstrap.pypa.io/get-pip.py | python3.11 --user'
                sh 'python -m pip --version --user'
                sh 'python -m pip install --upgrade pip --user'
                sh 'pip install codecarbon --user'
            }
        }
    }
}