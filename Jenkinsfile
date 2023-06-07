pipeline {
    agent any
    stages {
        stage('Start Docker Compose') {
            steps {
                sh '''
                    docker compose -p ds up -d
                    sleep 90
                    chmod +x ./tests/tests.sh
                    ./tests/tests.sh
                   '''
            }
        }
    }
}