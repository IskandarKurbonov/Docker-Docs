pipeline {
    agent any
    stages {
        stage('Start PostgreSQL') {
            steps {
                sh '''
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=9.5; do
                        export $v
                    done
                    NEW_ARR+=(postgres.yml rabbitmq.yml services.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/test.sh
                   '''
            }
        }
    }
}