pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/Rochitjain73/flask-devops-ci.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest'
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
