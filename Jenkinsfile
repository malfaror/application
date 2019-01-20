pipeline {
    agent any

    stages {
        stage('Build and Test') {
            steps {
               docker build("malfaror/application")
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            docker push("${env.BUILD_NUMBER}")
            docker push("latest")
            }
        }
    }
  }
}
