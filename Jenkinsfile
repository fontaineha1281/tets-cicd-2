pipeline {
    agent any
    tools {
        nodejs "NodeJS19"
    }
    stages {
        stage('Fetach Code') {
            steps {
                git branch: 'dev', url: 'https://github.com/fontaineha1281/tets-cicd-2.git'
            }
        }
        stage('Build') {
            sh 'npm run build'
        }
    }
}