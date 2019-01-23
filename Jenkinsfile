node {
    
    stage('Build and Publish'){
        checkout scm
        def app = docker.build("gcr.io/smiling-breaker-228800/malfaror/application:${env.BUILD_ID}")
        app.push()
        app.push('latest')
        }
    
     stage('Deploy') {
            echo "Deploying"
         
         
        }
     }
  

