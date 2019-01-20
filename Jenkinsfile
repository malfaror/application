pipeline {
    agent { dockerfile true }

    stages {
        stage('Build and Test') {
            steps {
               def app = docker.build("malfaror/application:${env.BUILD_ID}")
                 app.push()
                app.push('latest')
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
               
            }
        }
    }
  }
}
