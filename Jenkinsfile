pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Clone your React project from your repository
                git branch: 'dev', url: 'https://github.com/fontaineha1281/tets-cicd-2.git'
            }
        }       
        stage('Build') {
            steps {
                // Build your React project
                sh 'npm ci'
                sh 'npm run build'
            }
        }  
    }
}