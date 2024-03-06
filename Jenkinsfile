pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from version control
                sh "git clone https://github.com/PandiriMounika2001/gcp.git"
                sh "mvn clean -f gcp"
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
               sh "mvn instal -f gcp"
               
            }
        }
        
        stage('package') {
            steps {
                sh "mvn install -f gcp" 
            }
        }
    }
    
   
