pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from version control
                bat "git clone https://github.com/PandiriMounika2001/gcp.git"
                bat "mvn clean -f gcp"
            }
        }
        
        stage('Build') {
            steps {
                // Build the project using Maven
                sh 'mvn clean package'
            }
        }
        
        stage('Test') {
            steps {
               bat "mvn instal -f gcp"
               
            }
        }
        
        stage('package') {
            steps {
                bat "mvn install -f gcp" 
            }
        }
    }
    
   
