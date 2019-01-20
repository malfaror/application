node {

    checkout scm
    
    def app = docker.build("malfaror/application:${env.BUILD_ID}")
        app.push()
        app.push('latest')
    }

