pipeline{
    agent any
    environment {
       PATH = "$PATH:/opt/apache-Maven 3.6.3 /bin"

    }
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/PandiriMounika2001/gcp'
            }
         }        
       stage('Build'){
            steps{
                sh 'mvn clean package'
            }
         }
        stage('SonarQube analysis') {
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('sonarqube-8.9') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh "mvn sonar:sonar"
    }
        }
        }
       
    }
}
    


      
