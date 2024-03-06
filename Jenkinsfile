pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/PandiriMounika2001/gcp'
            }
        }
        stage('Build') {
            steps {
               echo "building"
            }
        }
        stage('Test') {
            steps {
                echo "testing"
            }
        }
    }
}

      
