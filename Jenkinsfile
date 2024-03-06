pipeline {
    agent any
    stage('Checkout') {
        git branch: 'main', url: 'https://github.com/PandiriMounika2001/gcp.git'
    }
    stage('Build') {
      steps {
         bat label: 'mvn', script: 'mvn clean test'
    }
    stage('Test') {
       steps {
           bat label: 'maven', script: 'mvn  -v'
    }
}
    }
}
    


      
