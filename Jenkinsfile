pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cloud-devops-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f cloud-devops-container || true
                docker run -d -p 5000:5000 --name cloud-devops-container cloud-devops-app
                '''
            }
        }
    }
}
