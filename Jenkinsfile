pipeline {
  agent {
    docker {
      image 'golang:1.10.2'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'pwd'
      }
    }
  }
  environment {
    DOCKER_OPTS = '\'-h tcp://192.168.18.1:2375\''
  }
}