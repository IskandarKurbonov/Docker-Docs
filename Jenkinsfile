pipeline {
    agent any
    stages {
        stage('Start PostgreSQL 11') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=11; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                   '''
            }
        }
        stage('Start PostgreSQL 12'){
            steps{
                sh ''' #!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=12; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    '''
            }
        }
    }
}