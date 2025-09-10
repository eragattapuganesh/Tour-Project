pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/sandeepvilla1612/Tour-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t tour-project .'
                }
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                script {
                    sh 'docker-compose down || true'
                    sh 'docker-compose up -d --build'
                }
            }
        }
    }
}
