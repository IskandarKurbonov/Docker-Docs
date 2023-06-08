pipeline {
    agent any
    stages {
        stage('Start Docker Compose') {
            steps {
                sh '''
                    docker compose -p ds up -d
                    sleep 60
                    docker ps -a
                    docker images -a
                    chmod +x ./tests/tests.sh
                    ./tests/tests.sh
                   '''
            }
        }
    }
}