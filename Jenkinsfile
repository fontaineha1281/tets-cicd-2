pipeline {
    agent any
    tools {
        nodejs "NodeJS"
    }
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
                sh 'npm i'
                sh 'npm run build'
            }
        }  
    }
}