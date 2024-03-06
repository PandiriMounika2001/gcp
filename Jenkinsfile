pipeline {
    agent any

    stages {
        stage('maven version') {
            steps {
                bat label: 'maven', script: 'mvn  -v'
            }
        }
        stage('running test') {
            steps {
                bat label: 'mvn', script: 'mvn clean test'
            }
        }
    }
}
    


      
