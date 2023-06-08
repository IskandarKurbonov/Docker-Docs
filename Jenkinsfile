pipeline {
    agent any
    stages {
        stage('Start PostgreSQL 11') {
            steps {
                sh '''
                    cd tests
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=11; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    echo $NEW_ARR
                    export config=${NEW_ARR[@]}
                    echo $config
                   '''
            }
        }
    }
}