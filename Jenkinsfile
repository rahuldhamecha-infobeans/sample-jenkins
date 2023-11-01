pipeline {
    agent any
    stages {

        stage('Build') {
            steps {
                echo "Rock"
            }
        }
        stage('unit test') {
            parallel([
                'hello': {
                    echo "hello"
                },
                'world': {
                    echo "world"
                }
            ])
        }
    }

}