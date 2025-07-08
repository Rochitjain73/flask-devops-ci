pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                script {
                    docker.image('python:3.10').inside {
                        sh 'pip install -r requirements.txt'
                    }
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    docker.image('python:3.10').inside {
                        sh 'pytest'
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-devops-ci .'
            }
        }

        stage('Run Flask App in Docker') {
            steps {
                sh 'docker run -d -p 5050:5050 flask-devops-ci'
            }
        }
    }
}