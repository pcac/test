pipeline {
    agent {
        docker { image 'golang:1.10.2' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'go version'
            }
        }
    }
}
