pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Git Checkout....') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'Github-id', url: 'https://github.com/dhuriviraj00/knx-devops-microservice-test.git']])
            }
        }
        stage('Build Docker Image....') {
            steps {
                sh 'docker build -t dockervk23/docker76023:latest .'
            }
        }
    }
}
