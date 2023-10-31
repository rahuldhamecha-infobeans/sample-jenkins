pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('CodeCarbon Analysis') {
            steps {
                sh 'cd /var/www/html/laravel-docker/'
                sh 'git pull'
            }
        }
    }
}
