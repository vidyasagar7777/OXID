node {
    def img
    def db
    def repo='745056945294.dkr.ecr.us-west-2.amazonaws.com/oxidcloud'
    stage('git checkout') {

        checkout scm
    }

    stage('Build Image') {
        img=docker.build("${repo}:oxidcloud-php-dev-${env.BUILD_ID}")
        db=docker.build("${repo}:oxidcloud-mysql-${env.BUILD_ID}","-f Dockerfile_db .")
    }

    stage('Push') {
        docker.withRegistry('https://745056945294.dkr.ecr.us-west-2.amazonaws.com/oxidcloud', 'ecr:us-west-2:aws_creds'){
        db.push()    
            img.push()
        }
    }
}
