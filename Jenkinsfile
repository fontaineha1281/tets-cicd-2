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

        stage('Install Dependencies') {
            steps {
                // Install Node.js and npm
                sh 'curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -'
                sh 'apt-get install -y nodejs'
                
                // Install project dependencies
                sh 'npm install'
            }
        }
        
        stage('Build') {
            steps {
                // Build your React project
                sh 'npm run build'
            }
        }  
    }
}