node {
    def app
  
         stage('Build and Test') {
                  echo 'Building..'
                  app = docker.build("malfaror/application")
            }
        stage('Stagging') {
                 echo 'Testing...'
            }
        stage('Deploy') {
             echo 'Deploying....'
             docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
 }
