node {

    checkout scm
    docker.withRegistry('https://hub.docker.com', 'docker') 
    def app = docker.build("malfaror/application:${env.BUILD_ID}")
        app.push()
        app.push('latest')
    }

