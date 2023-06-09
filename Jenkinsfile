pipeline {
    agent any
    stages {
        stage('Start PostgreSQL 9 & RabbitMQ latest') {
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
        stage('Start PostgreSQL 11 & RabbitMQ latest ') {
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
        stage('Start PostgreSQL 12 & RabbitMQ latest ') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in POSTGRES_VERSION=12; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start ActiveMQ 5.14.3 & PosgreSQL 9') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in ACTIVEMQ_VERSION=5.14.3 AMQP_HOST=activemq AMQP_TYPE=activemq; do export $v; done
                    NEW_ARR+=(postgres.yml activemq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start ActiveMQ latest & PostgreSQL 9') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in ACTIVEMQ_VERSION=latest AMQP_HOST=activemq AMQP_TYPE=activemq; do export $v; done
                    NEW_ARR+=(postgres.yml activemq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start RabbitMQ 3 & PostgreSQL') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in RABBITMQ_VERSION=3; do export $v; done
                    NEW_ARR+=(postgres.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start MySQL 5 & RabbitMQ latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in MYSQL_VERSION=5 DB_TYPE=mysql DB_HOST=mysql DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mysql.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start MySQL 5.7 & RabbitMQ latest ') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in MYSQL_VERSION=5.7 DB_TYPE=mysql DB_HOST=mysql DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mysql.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start MySQL 8 & RabbitMQ latest ') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in MYSQL_VERSION=8 DB_TYPE=mysql DB_HOST=mysql DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mysql.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start ActiveMQ 5.14.3 & MySQL latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in ACTIVEMQ_VERSION=5.14.3 AMQP_HOST=activemq AMQP_TYPE=activemq DB_TYPE=mysql DB_HOST=mysql DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mysql.yml activemq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start ActiveMQ latest & MySQL latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in ACTIVEMQ_VERSION=latest AMQP_HOST=activemq AMQP_TYPE=activemq DB_TYPE=mysql DB_HOST=mysql DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mysql.yml activemq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start RabbitMQ 3 & MySQL latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in RABBITMQ_VERSION=3 DB_TYPE=mysql DB_HOST=mysql DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mysql.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }        
        stage('Start MariaDB 10.5 & RabbitMQ latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in MARIADB_VERSION=10.5 DB_TYPE=mariadb DB_HOST=mariadb DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mariadb.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start MariaDB 10.6 & RabbitMQ latest ') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in MARIADB_VERSION=10.6 DB_TYPE=mariadb DB_HOST=mariadb DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mariadb.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start MariaDB 10.8 & RabbitMQ latest ') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in MARIADB_VERSION=10.8 DB_TYPE=mariadb DB_HOST=mariadb DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mariadb.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start ActiveMQ 5.14.3 & MariaDB latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in ACTIVEMQ_VERSION=5.14.3 AMQP_HOST=activemq AMQP_TYPE=activemq DB_TYPE=mariadb DB_HOST=mariadb DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mariadb.yml activemq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start ActiveMQ latest & MariaDB latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in ACTIVEMQ_VERSION=latest AMQP_HOST=activemq AMQP_TYPE=activemq DB_TYPE=mariadb DB_HOST=mariadb DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mariadb.yml activemq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }
        stage('Start RabbitMQ 3 & MariaDB latest') {
            steps {
                sh '''#!/bin/bash
                    export PRODUCT_EDITION=""
                    export RELEASE_VERSION=""
                    for v in RABBITMQ_VERSION=3 DB_TYPE=mariadb DB_HOST=mariadb DB_PORT=3306; do export $v; done
                    NEW_ARR+=(mariadb.yml rabbitmq.yml docs.yml)
                    export config=${NEW_ARR[@]}
                    ./tests/tests.sh
                    sleep 30
                   '''
            }
        }          
    }
}