pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                sh 'make build'
            }
        }

        stage('Test') {
            parallel linux: {
                node('linux') {
                    checkout scm
                    try {
                        echo "Rock"
                    }
                    finally {
                        echo "Demo"
                    }
                }
            }
        }

    }
}