pipeline {
    agent any
    stages {
        stage('Start Docker Compose') {
            steps {
                sh '''
                    docker compose -p ds up -d
                    sleep 90
                    healthcheck_res=$(curl localhost/healthcheck)
                    if [[ $healthcheck_res == "true" ]]; then
                        echo "Healthcheck passed."
                    else
                        echo "Healthcheck failed!"
                        exit 1
                    fi
                   '''
            }
        }
    }
}