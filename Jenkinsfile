pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "my-tomcat"
        CONTAINER_NAME = "tomcat-container"
        DOCKER_TAG = "latest"
        PORT = "8080"
    }

    stages {
        stage('Checkout') {
            steps {
                // Assuming you have a Git repository with a Dockerfile for Tomcat
                git 'https://github.com/PandiriMounika2001/gcp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${DOCKER_TAG}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove the container if it already exists
                    sh """
                        if [ \$(docker ps -q -f name=${CONTAINER_NAME}) ]; then
                            docker stop ${CONTAINER_NAME}
                            docker rm ${CONTAINER_NAME}
                        fi
                    """
                    // Run the new container
                    docker.image("${DOCKER_IMAGE}:${DOCKER_TAG}").run("-d --name ${CONTAINER_NAME} -p ${PORT}:8080")
                }
            }
        }
    }

    post {
        always {
            script {
                // Clean up unused Docker images to save space
                sh 'docker system prune -f'
            }
        }
    }
}



  
