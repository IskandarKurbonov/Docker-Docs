pipeline {
    agent any
    stages {
        stage('Start PostgreSQL 11') {
            steps {
                sh '''
                    cd tests
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=9.5; do
                        export $v
                    done
                    NEW_ARR+="postgres.yml rabbitmq.yml services.yml"
                    echo $NEW_ARR
                    export config=${NEW_ARR[@]}
                    ./tests/test.sh
                   '''
            }
        }
    }
}