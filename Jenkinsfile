pipeline {
    agent any

    environment {
        PATH = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    }

    stages {
        stage('Build Docker Image & Run Tests') {
            steps {
                sh '''
                /usr/local/bin/docker build -t flask-ci-app .
                '''
            }
        }

        stage('Run App Container') {
            steps {
                sh '''
                /usr/local/bin/docker stop flask-container || true
                /usr/local/bin/docker rm flask-container || true
                /usr/local/bin/docker run -d --name flask-container -p 5050:5000 flask-ci-app
                '''
            }
        }
    }
}