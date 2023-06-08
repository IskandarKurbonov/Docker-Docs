pipeline {
    agent any
    stages {
        stage('Start PostgreSQL 9') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=9; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start PostgreSQL 11') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=11; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
    }
}