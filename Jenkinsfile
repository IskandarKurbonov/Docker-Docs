pipeline {
    agent any
    stages {
        stage('Start Docker Compose') {
            steps {
                sh '''
                   docker compose -p ds up -d
                   '''
            }
        }
    }
}