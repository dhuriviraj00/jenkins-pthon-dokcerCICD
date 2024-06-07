pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Git Checkout') {
            steps {
                script {
                    checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'github-id', url: 'https://github.com/dhuriviraj00/jenkins-pthon-dokcerCICD.git']]])
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t test .'
                }
            }
        }
        stage('Tag Docker Image') {
            steps {
                script {
                    sh 'docker tag test dockervk23/docker76023:latest'
                }
            }
        }
        stage('Publish Artifacts To Dockerhub') {
            steps {
                sh 'docker image ls'
                sh 'docker logout'
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin docker.io'
                sh 'docker push dockervk23/docker76023:latest'
            }
        }
    }
}
