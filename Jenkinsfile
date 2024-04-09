pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Checkout code from GitHub
                bat 'git clone https://github.com/Rsowmya26/aa.git'
                
                // Build with Maven
                bat 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                // Test with Maven
                bat 'mvn test'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build Docker image
                bat 'docker build -t your-docker-image-name .'
            }
        }
        stage('Push Docker Image') {
            steps {
                // Push Docker image to Docker registry
                // Replace <docker-hub-username> with your Docker Hub username
                bat 'docker push <docker-hub-username>/your-docker-image-name'
            }
        }
    }
}
