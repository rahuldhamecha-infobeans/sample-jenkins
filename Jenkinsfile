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
                sh 'git pull https://rahuldhamecha-infobeans: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@github.com/rahuldhamecha-infobeans/sample-jenkins'
            }
        }
    }
}
