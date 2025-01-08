pipeline {
    agent any
    stages {
        stage('pull'){
            steps {
                git branch: 'dev', url: 'https://github.com/SJ8688/backend-project.git'
            }
        }
        stage('build'){
            steps {
                sh 'mvn clean package'
            }
        }
        stage('deploy'){
            steps {
                sh '''
                    docker build . -t sj8688/backend:latest
                    docker push sj8688/backend:latest
                    docker rmi sj8688/backend:latest
                    kubectl apply -f ./yaml/
                '''
            }
        }
    }
}